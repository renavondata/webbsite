
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

<script type="text/javascript">document.title="Your views on GEM's Rules";</script>

	<div class="summary">In a successful start to Listing Rule consultations over the internet, readers of Webb-site.com have made their views known to GEM. By the deadline of 30-Jun-00, 55 submissions had been made, with a further 6 received in the week after the deadline. The total is 3 times the number of submissions that might typically be received by the Exchange. Here's what you had to say...</div>

<h2 class="center">Your views on GEM's Rules<br>
<span class="headlinedate">9 July 2000</span></h2>
<p>A big thank you to those who put their names on the record and
made their views known to GEM. This internet-based submission project has been a
big success, and we hope that even more readers will contribute to the
development and shaping of our markets in the future.</p>
<p>Sources tell <i>Webb-site.com</i> that in a typical consultation of this nature, the Exchange might
receive only 20 submissions. Even the original 1998 consultation on the proposed
second market (which became GEM) received only 39 submissions. We know, because <i>Webb-site.com
</i>editor David Webb was on the committee which designed GEM.</p>
<p>This time, our readers have made 61 submissions,
including 55 by the formal deadline of 30-Jun-00. So your views should surely
carry some weight. Of these submissions, the vast majority were in agreement with <a href="gemsubmn.asp" target="_blank">our views and
proposals</a>, and numerous additional comments were made.</p>
<p>One of the big problems with these consultation exercises is
that the Exchange seldom publishes the results, but just proceeds with drafting
rules (and usually at a snail's pace). We are still waiting for some of the
results of the May-99 main board consultation exercise. This lack of
transparency makes it difficult to know whether the views expressed by public
submissions have any real effect. We can at least accelerate the debate by
publishing extracts from your submissions. They are reproduced here without
endorsement by <i>Webb-site.com</i>.</p>
<h3>Corporate Governance</h3>

<p>On the general issue of corporate governance, a reader wrote:</p>

<blockquote>
<p>&quot;International investors will increasingly
apply a substantial risk premium to markets with lax disclosure laws and poor
corporate governance. If markets in Hong Kong adopt best international practice
in these respects their attractiveness will increase, not diminish, as investor
confidence results in enhanced liquidity for new listings. At the moment GEM
listings are capturing the same pool of highly speculative liquidity put on Race
6 at Happy Valley; this has not resulted in a stable, deep market.&quot;</p>

</blockquote>
<p>While a HK-based reader wrote:</p>

<blockquote>
<p>&quot;I agree totally with Webb-site.com's
submission - especially with respect to the LOCK-UP provision. Quite frankly the
rules are a joke! It has resulted in one great big get-rich-quick pyramid scheme
and this does not reflect well on HK's reputation as a mature financial
centre.&quot;</p>

</blockquote>
<p>A HK-based media columnist wrote:</p>

<blockquote>
<p>&quot;The biggest single danger of relaxed
listing rules for GEM is that while they may appear to bring listing
requirements in line with those of Nasdaq and similar exchanges abroad, Nasdaq
offers relaxed requirements within a general environment in the US of
comprehensive protections for investors through other agencies while we in Hong
Kong have much weaker equivalents of these comprehensive protections. Our stock
exchange needs to have tighter and better enforced listing restrictions because
we do not have them elsewhere.&quot;</p>

</blockquote>

<h3>Allocation of pre-IPO and IPO placings</h3>

<p>A HK-based journalist wrote: </p>

<blockquote>
  <p>&quot;Rules should also prevent executives of investment
  banks, whether or not connected to new issues, being allotted any shares in a
  period of one year prior to listing at any price less than 70% of the IPO
  price unless they can demonstrate that they have been genuinely and actively
  involved in the creation and management of the business.</p>
  <p>Former Securities Commissioners and senior staff of the SFC
  should be disbarred from beneficially owning stakes in GEM IPOs or accepting
  executive positions with promoters.&quot;</p>
</blockquote>
<p>While a HK-based fund manager wrote:</p>
<blockquote>
  <p>&quot;As a fund manager and having been burnt by a couple of
  GEM listings at present I am not willing to subscribe to any GEM IPO. To make
  me invest in the future I require only one change that is the following very
  simple statement. Any share or option issued 12 months before the IPO at a
  price lower than the IPO price cannot be sold for a period of six months after
  the listing.&quot;</p>
</blockquote>

<h3>Share options</h3>

<p>On the subject of options, an employee of a local brokerage
proposed more flexibility: </p>

<blockquote>

<p>&quot;Rather than permitting to issue 0.5%
options in 10 years, more flexible to issue 5% at one time but exercisable in 10
years - this locks the exercise price but ties the option holder to continue
service if full benefits of options are to be reaped.&quot; </p>

</blockquote>

<p>While a staffer with a dot-com wrote: </p>

<blockquote>
  <p>&quot;I believe that eligible participants should be
  restricted to full time employees of the company AND members on the Board of
  Directors whether executive or independent).</p>
  <p>I do not support the view that options should be granted to
  suppliers and clients of the companies - unless there is supplementary
  information that would allow the investor to compare like company's
  performance. Without adequate disclosure the rule would allow companies to
  manipulate their gross profits and make any meaningful comparison for the
  average investor meaningless.&quot;</p>
</blockquote>

<h3>Public offer</h3>

<p>Two readers disagreed with our view that this should be a matter
for the company and its sponsor to decide. One wrote: </p>

<blockquote>
  <p>&quot;A minimum public offer of 10% should be compulsory with a clawback
  mechanism depending on the level of public subscriptions. The level of
  clawback should be similar to that of the main board. There should also be the
  added requirement of disclosure of substantial private placements and
  percentage of issued capital being allocated to each placee.&quot;</p>
</blockquote>

<h3>Lock-up</h3>

<p>A director of a local investment manager wrote: </p>

<blockquote>

<p>&quot;The lock up period should remain at 2
years. Young companies need a lot of nurture and management time and 6 months is
just a ridiculously short period. The purpose of GEM is to provide a funding
vehicle for young companies to raise capital, not for the controlling
shareholders and initial management to have a grand exit and then go on to some
other projects. As minority investors, we would like to see focused and
committed management team.&quot; </p>

</blockquote>

<p>So there you have it. The public has spoken. Now we await GEM's
response. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14388">GEM Listing Committee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=147">Growth Enterprise Market</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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