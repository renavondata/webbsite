
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

<script type="text/javascript">document.title="Town Health Warning";</script>

	<div class="summary">Turning our sights to the GEM, we find that newly listed Town Health, blessed with a deep-discount investment from Cheung Kong, has discovered the perfect acquisition, just 4 weeks after its listing, from someone who should have been identified in the prospectus. What's more, the Vice Chairman had an undisclosed interest in the target, a top-five supplier to the Group.</div>

<h2 class="center">Town Health Warning<br>
<span class="headlinedate">19 November 2000</span></h2>
<p>Browsing through our pile of fresh prospectuses the other day
(this is our idea of entertainment), we noticed a few unusual aspects to <a href="http://www.townhealth.com/" target="_blank">Town
Health International Holdings Company Ltd</a> (<b>Town Health</b>). This company
bills itself as: </p>

<blockquote>

<p>&quot;a management service provider for private medical and
dental practices and an integrated healthcare service provider for the general
public in Hong Kong&quot;. </p>

</blockquote>

<p>Great, you might think, another doctor's chain to provide an
alternative to <a href="../dbpub/articles.asp?p=2147" target="_blank">Quality Healthcare Asia</a>.
Private healthcare is the future, right? We'll tell you why we wouldn't touch
this company through three pairs of latex gloves. </p>

<h3>The missing shareholder</h3>

<p>One thing that caught our eye in the list of &quot;initial
management shareholders&quot; was a BVI company called Jacobson Medical
Corporation (<b>Jacobson MC</b>). This company was 15% owned by Town Health's
executive director Derek Sum Kwong-yip (<b>Mr Sum</b>), and 85% owned by a
person known only as <i>&quot;the 85% shareholder of Jacobson&quot;</i> or <i>&quot;the
controlling shareholder of Jacobson&quot;</i>. This was despite the fact that
the mystery person was deemed to be an Initial Management Shareholder and is
subject to a 6-month lockup on the shares. </p>

<p>Now whenever we see efforts to avoid disclosure, alarm bells
ring. Regular readers will recall that we saw a similar omission from the <a href="../dbpub/articles.asp?p=10902" target="_blank">Panda-Recruit</a>
prospectus, and it turned out that the missing link was a director's family
trust. </p>

<p>Jacobson MC owns 34,924,479 shares in Town Health, or 8.72% of
the company. It acquired them from Dr Cho Kwai Chee, the group's Chairman and
Founder, as a result of an exchangeable note which he agreed on 10-Dec-99 to
sell to Jacobson MC for $16,440,813. On 30-Sep-00 the note was exchanged for
shares. The average price per share is about $0.471. </p>

<p>Mr Sum, a pharmacologist, is also the Managing Director of
Jacobson Medical (Hong Kong) Limited (<b>Jacobson HK</b>), which is described as
<i>&quot;an associate of Jacobson [MC]&quot;</i>. He has also been an executive
director of HK-listed printed circuit board maker Suwa International Holdings
Limited (<b>Suwa</b>) since 3-Jan-00. Mr Sum was promoted to Vice Chairman of
Town Health on 13-Nov-00. </p>

<p>Not only was Jacobson MC an Initial Management Shareholder of
Town Health, but the prospectus disclosed that <i>&quot;one of [the] five
largest suppliers is controlled by the controlling shareholder of Jacobson
[MC]&quot;, </i>still without telling us who that controlling shareholder was<i>.
</i>Those five suppliers accounted for 51% of the Group's total purchases of
pharmaceutical products in the year to 31-Mar-00. </p>

<p>The prospectus continued to make a statement which we later find
to be false: </p>

<blockquote>

<p><b>&quot;none of the Directors...has any interest in the Group's
five largest suppliers...&quot;</b> </p>

</blockquote>

<h3>Four weeks later...</h3>

<p>On 16-Nov-00, four weeks after Town Health began trading on the
GEM, the company
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20001117/00000MC20001117004246H.pdf">announced</a>
 the proposed acquisition of 80% of Jacobson
HK for <b>HK$18.144m</b> in cash. Jacobson HK has net assets of just $1.16m and
made a loss after tax of HK$750,913 in the year to 31-Mar-00. </p>

<p>The announcement disclosed that Mr Lau Wing-hung (<b>Mr Lau</b>)
was the 85% shareholder of Jacobson MC whom the prospectus had omitted to name. <i>Webb-site.com</i>
can also reveal that Mr Lau, who is also known as Johnny Lau Wing-hung, is the
Chairman and largest shareholder of Suwa, of which Mr Sum is a director. It's
all beginning to make sense. </p>

<p>In addition, it now became clear that the top-five supplier
referred to in the prospectus was none other than Jacobson HK, of which Mr Sum
is Managing Director. Not only that, but what we are now told is that Mr Sum is
beneficially interested in 10% of Jacobson HK. That's a direct contradiction of
the statement in the prospectus, that none of the Directors had any interest in
any of the Group's five largest suppliers. </p>

<p>In fact, of the 80% of Jacobson HK that is being sold to Town
Health, 70% comes from Mr Lau and 10% from Mr Sum. However, one quarter of the
payment goes to Mr Sum, so in effect, he's getting a commission of HK$2.268m on
Mr Lau's sale, thereby doubling his proceeds. </p>

<p>The IPO raised only HK$38m, net of expenses, so almost half of
this amount is being spent on Jacobson HK. We are asked to believe that Town
Health and its directors had no intention of making this acquisition when they
closed the IPO on 12-Oct-00. What a difference a month makes. </p>

<h3>Cheung Kong's blessing</h3>

<p>The tiny IPO was massively oversubscribed, and on first glance
you might think this was a rare GEM success story. After all, the shares soared
from the IPO price of $1.25, reached $4.70 and are now at $2.25.&nbsp; But a lot
of this enthusiasm may be attributable to the fact that Li Ka-shing's Cheung
Kong (Holdings) Ltd (<b>Cheung Kong</b>) had blessed the deal with an investment
of its own money. The IPO was sponsored by CEF Capital and First Shanghai
Capital. CEF is 50% owned by Cheung Kong. </p>

<p>Look harder and the story is less impressive. Cheung Kong agreed
back on 6-Jul-00 to subscribe 9.9% of the post-float shares, for up to $9.9m.
That works out at just <b>$0.25</b> per share, and the subscription was not
completed until 3-Oct-00, just 6 days before the prospectus was published. The
payment was to be determined by reference to &quot;the market capitalisation
upon listing&quot;&nbsp; - in other words, by reference to the IPO price - and
adjusted downwards if necessary. Luckily this turned out to be <b>$1.25</b>, so
Cheung Kong paid the full $9.9m and got the shares at a whopping <b>80% discount</b>. </p>

<p>On top of the share subscription, on 20-Sep-00 Cheung Kong also
agreed to subscribe a convertible note in Town Health, to be issued on
17-Oct-00, the day before dealings in the shares began. The note for
HK$31,562,500 is convertible until 31-Jul-02 at <b>$0.625</b> per share, or a
50% discount to the IPO price. If the note is not converted by Cheung Kong, then
Town Health has to redeem it on maturity at 125% of principal - in other words,
the yield to maturity is about 13.31% per annum. No coupon was specified in the
prospectus so we presume it is interest-free. If Town Health fails to redeem the
bond, then interest becomes payable at 15% per annum. </p>

<p>The prospectus states: </p>

<blockquote>

<p>&quot;the directors of Town Health believe that the
establishment and maintenance of a strategic relationship with Cheung Kong...
will facilitate the Group in identifying suitable locations for the expansion of
the Town Health Centre Network&quot; </p>

</blockquote>

<p>We thought that's what estate agents are for. It reminds us of <a href="../dbpub/articles.asp?p=9381" target="_blank">Timeless
Software's</a> famous explanation of why they were blowing 40% of their IPO
money on the 79th floor of Cheung Kong's development in Sheung Wan. </p>

<p>So there you go - if you think Cheung Kong's endorsement makes
Town Health a good deal, well maybe for them, at $0.25 per share, but not at the
IPO price. It is high time the public woke up to the idea that what's good for a
tycoon is not necessarily good for them. This is not the first time - remember
that the Li Ka-shing Foundation was also an investor (at a 26% discount) in <a href="../dbpub/articles.asp?p=10365" target="_blank">iSteelAsia.com</a>,
which now trades at 53% below its IPO price. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11691">Town Health International Medical Group Limited</a></li>
				
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