
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

<script type="text/javascript">document.title="Beijing Siphon";</script>

	<div class="summary">In the latest amendment to its Listing Rules, the Stock Exchange has confirmed that it treats PRC municipal governments as unrelated to the window companies they control. We explain how this creates a lower standard for red-chips and H-shares, and how it allowed Beijing Enterprises effectively to pass the bulk of its listing proceeds to the municipal water company without minority shareholders' approval.</div>

<h2 class="center">Beijing Siphon<br>
<span class="headlinedate">12 May 1999</span></h2>
<p>On 13-Jul-98 <a href="http://www.behl.com.hk/" target="_blank">Beijing
Enterprises Holdings</a> (<strong>BEH</strong>) announced that it was paying RMB1,500m
(about HK$1,401m) to Beijing Municipal Water Company (<strong>BMWC</strong>), apparently
&nbsp; for a concession &quot;to operate water purification business&quot;, for 20 years,
at Phase 1 of the No. 9 <a href="http://www.behl.com.hk/2invest.htm#watsup" target="_blank">Water Treatment Plant</a>, which is owned by BMWC.</p>

<p>In fact, BEH won't be doing any operating, because it has contracted all
these duties back to BMWC under a 20-year &quot;operation and maintenance agreement&quot;,
which takes the deal round in a circle. &quot;I will agree to operate your water plant, if
you will agree to operate it for me&quot;</p>

<h3>BEH goes into the annuity business</h3>

<p>BEH has essentially entered into a financing transaction. In return for
its RMB1,500m investment, BEH will get an annual income of RMB210m for 20 years, subject
to the necessary tariffs being approved from time to time by (you guessed it) the Beijing
Municipal Government. The tariff formula provides that If the volume of water treated
increases, the tariff automatically decreases to provide the same net income. Tariff
approvals are always subject to other pressures such as controlling consumer price
inflation, so the government's approval in future cannot be taken for granted. If BMWC
makes any profit (after distribution costs) by selling the water to end users, than this
gets paid to BEH, but that would be an unexpected bonus.</p>

<p>The purchase of an annual income of RMB210m for 20 years is a simple
annuity and any student of finance could calculate that the internal rate of return (IRR)
on the annuity is 12.7% per annum. In fact, we are given a clue to this because in the
&quot;operation and maintenance agreement&quot;, any late payments are subject to penalty
charges of 12.74% per annum.</p>

<p>BMWC is owned by the Beijing Public Utility Bureau, part of the Beijing
Municipal Government. The Beijing government also owns 100% of Beijing Holdings Ltd (<strong>BHL</strong>),
the controlling shareholder of Beijing Enterprises. That's BEH's whole raison d'etre - it
is a &quot;window&quot; company of the Municipal Government, and as such is their listed
vehicle in Hong Kong.</p>

<p>In its much-publicised flotation in May-1997 at the peak of red-chip
mania, BEH raised HK$2.46 billion from the public, and by 31-Dec-97 had a net cash
position of about HK$1.6 billion. That's nearly equal to the $1.4 billion spent on the
water company annuity. As the government controls both companies, from their perspective,
it's out of one pocket and into the other.</p>

<h3>It's None of Your Business</h3>

<p>Now you may, or may not, think that 12.7% is a fair return for a
RMB-denominated tariff-linked 20-year annuity issued by a Chinese water company. We don't
need to pass judgement on that here, although our red-chip IPO fans might have been
expecting somewhat more dynamic return on their funds.</p>

<p>However, if you had a view on this, forget it, because the transaction was
not treated as a &quot;connected transaction&quot; under Hong Kong Listing Rules, so
minority shareholders did not get to approve it.</p>

<p>That's right, the <a href="http://www.sehk.com.hk/" target="_blank">Stock
Exchange</a> regards BMWC, controlled by the municipal government, as independent of BEH,
which is controlled by the same government. We are not talking about a deal between
provinces here, but a deal between arms of the same municipal government. The Author
raised this issue with the Exchange last July. Whether or not as a consequence, we now
have a new amendment to the Listing Rule 19A.21, <a href="http://www.sehk.com.hk/CCD/content/0426.htm" target="_blank">announced on 26-Apr-99</a>,
which confirms &quot;<em>the Exchange will not normally consider a PRC Government Body as
a connected person of a PRC issuer</em>&quot;. While this doesn't specifically apply to
BEH, which is incorporated in Hong Kong, the principle is no doubt the same. The
definition of &quot;<em>PRC Government Body</em>&quot; includes virtually all forms of
government from county to State level.</p>

<p>The Exchange explained to the Author that the PRC is different, that it
would be impractical if every purchase of state-owned assets by a window company was
subject to independent shareholders' approval , and that they therefor limit the scope of
&quot;connected persons&quot; to the ultimate incorporated shareholder (in this case BHL),
not its owners.</p>

<p>This line of reasoning defeats the whole purpose of connected transaction
rules, which is to prevent abuse of minority shareholders' funds. Let's face it, H-shares
and red chips have not exactly covered themselves in glory when it comes to shareholder
returns. If a PRC government wishes to inject assets into its window company (and take
cash out in return), it can now do so without minority shareholders' approval. Even if the
assets are owned by the corporate shareholder of the listed window company, it would be
easy to avoid the rules by first transferring the assets out to a separate arm of the
government that was then not regarded as &quot;connected&quot; to the listed company. The
rule also creates a two-tier playing field, since it doesn't apply to listed companies
which are not government-controlled. Hong Kong tycoons still have to follow the rules and
(except for small deals) ask their minority shareholders before dealing with the company.
We doubt if this is quite what Deng Xiaoping had in mind with &quot;one country, two
systems&quot;.</p>

<h3>You're not Connected, but you can have a Bid Waiver</h3>

<p>Finally, the Stock Exchange position is inconsistent with the way the <a href="http://www.sfc.hk/">SFC</a> regards PRC governmental shareholders for the
purposes of the Takeover Code. In this case, the SFC is asked to give waivers from the
requirement to make a general offer when a controlling shareholding is transferred from
one government arm to another. For example, Panda Electronics Group Company, which
controls H-Share Nanjing Panda Electronics, was recently transferred from the State
Ministry of Information Industry to the Nanjing Municipal Government. Under the Listing
Rules, both of these &quot;PRC Government Bodies&quot; would not be connected persons of
the H-share company, but under the Takeover Code, a bid waiver was granted, presumably on
the basis that common control existed, by tracing the line of command all the way up to
the State Council and back down again. We agree with that approach, but it is clearly
inconsistent with the Listing Rules.</p>

<h3>How difficult can it be?</h3>

<p>Minority shareholder protection in Hong Kong is bad enough with out
deliberately weakening the rules to allow transactions like the Beijing Siphon without
minority shareholders' approval. If a deal makes sense, they will not turn it down. The
cost of printing a circular and renting a hotel meeting room is more than offset by the
deterrent effect such a rule would have and the beneficial consequences to shareholder
returns. Fewer bad deals means higher profits. The Exchange should reverse its ruling and
clarify that any purchase by a listed company which is controlled by a PRC Government Body
should be treated as a connected transaction if the counterparty is, or is controlled by,
another PRC Government Body. If this inconveniences a few innocent deals then it is better
than letting all deals go through unchecked.</p>

<h3>The Shanghai Industrial case</h3>

<p>We should be grateful that Hong Kong's <a href="http://www.southpacifichotel.com.hk/" target="_blank">South Pacific Hotel</a> was
controlled by the immediate corporate parent of red-chip <a href="http://www.sihl.com.hk/" target="_blank">Shanghai Industrial Holdings</a>, so that the proposed injection of the
hotel into the red chip was made subject to shareholders' approval in December last year.
Readers may recall that this was one of the rare deals to be scrapped when minority
shareholders threatened to vote it down as being too expensive. This was complicated by
the Hong Kong Government's quandary over whether and how it would vote its newly-acquired
stake if the meeting went ahead. The meeting was cancelled, but If the hotel company had
been owned by, say, the Shanghai Tourism Bureau (&quot;an independent third party not
connected....&quot;), things might have been different!</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2768">BEIJING ENTERPRISES HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=441">SHANGHAI INDUSTRIAL HOLDINGS LIMITED</a></li>
				
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