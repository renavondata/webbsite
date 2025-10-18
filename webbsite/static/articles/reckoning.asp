
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

<script type="text/javascript">document.title="Tricom's Day of Reckoning";</script>

	<div class="summary">The day of reckoning approaches for Tricom, shortly to be renamed Pacific Century CyberWorks. Yesterday Pacific Century announced an injection of its Intel joint venture into Tricom, on terms we examine in this article. In a previous article we called the stock over-valued at $1.83. It closed yesterday at  $1.00, on the eve of a 5 to 1 consolidation. We review the share transactions since the deal was announced, and give you our take on what happens next.</div>

<h2 class="center">Tricom's Day of Reckoning<br>
<span class="headlinedate">3 August 1999</span></h2>
<p>Three months after the announcement, Pacific Century Regional
Developments (PCRD) is today due to complete the injection of its Hong Kong and
PRC property interests into Tricom, having received the necessary approvals on
29-Jul-99. </p>

<p>Three days later, on Friday 6-Aug-99, the lucky recipients of
the placing shares will take delivery of their stock. The shares today begin
trading in consolidated form, with every 5 old shares being combined into 1 new
share. That should take last night's closing price&nbsp;to $5 from $1. In terms
of new shares, the placees (through HSBC Investment Bank Asia and BNP Prime
Peregrine) purchased about 1,151m new shares at $0.31 per share. So they are
sitting on a paper profit of $4.69 per share, or 1,513%. </p>

<p>Don't expect them to just sit there - the gains represent a
staggering <b>HK$5,398m</b>. If we had participated in this placing we would
be sitting on the beach right now shouting sell orders into our satellite
phone. </p>

<p>In our piece <a href="pccyberwok.asp">Pacific Century Cyberwok</a>
(5-May-99) we said the shares were over-valued at $1.83 per old share ($9.15 per
new share). They've fallen 45% since then. The adjusted net asset value,
according to the Tricom circular dated 7-Jul-99, is $2,238m, or $0.347 per new
share. Since the convertible bonds issued to PCRD and its parent convert at only
$0.31 per new share, way below the current price, it is a near-certainty that
they will eventually convert. That means we should be looking at the fully
diluted adjusted net asset value of around $0.335 per new share, before adding
on the value of the Cyber-port. </p>

<h3>The Cyber-Port</h3>

<p>When the Tricom circular was dispatched (and as far as we know
nothing has changed), negotiations between the Government and Pacific Century
Group on a definitive agreement for the Cyber-Port property development were
still at a &quot;preliminary stage&quot; and they had not signed anything except
a non-binding letter of intent. In particular, the circular stated: </p>

<blockquote>

<p>&quot;Tricom may not be a party to the Cyber-Port
Project since the Government of Hong Kong has formally reserved its position on
which subsidiary of PCG it requires as party to the project agreement&quot; </p>

</blockquote>

<p>Interestingly, the letter from Anglo Chinese Corporate Finance
(the independent adviser to Tricom) revealed that they had been denied access to
the letter of intent which forms the basis of all the hype around Tricom. They
wrote: </p>

<blockquote>

<p>&quot;we have requested to review the letter of
intent signed by the Pacific Century Group and the Government of Hong Kong in
relation to the Cyber-Port Project, however we were advised that the letter of
intent is confidential and it was not made available to us&quot; </p>

</blockquote>

<p>Well at least they tried. </p>

<p>However, we'll assume that the Government has too much face
attached to the project to do the decent thing and put it out to tender. Therefore
we add our estimate of the net present value of the project ($9,000m)
to Tricom in reaching a fair value. </p>

<p>That leaves net assets of Tricom (assuming conversion of the
bonds) at about $1.28 per new share, as shown below: </p>

<img class="center" alt="" src="../images/reckon1.gif">

<p>We therefore see about 74% downside from the current price of $5,
which values the diluted Tricom at almost <b>$48bn </b>compared with our
estimate of $12.2bn. With the new shares due to be issued on 6-Aug, expect the
selling to start from 4-Aug onwards (allowing for T+2 settlement). </p>

<h3>Pacific Convergence Corp</h3>

<p>Yesterday Pacific Century Diversified (another wholly-owned
vehicle of Mr. Richard Li Tzar Kai) announced a deal to transfer its interest in
a joint venture with Intel into Tricom. The deal will be classified as a
&quot;Very Substantial Acquisition&quot; for Tricom but the announcement was
very short on details. </p>

<p>The joint venture, Pacific Century Convergence Corporation
(PCC), was established in Feb-98 and is 60% owned by PCD and&nbsp; 40% owned by
Intel Pacific, Inc. (which we presume is wholly-owned by Intel Corp.). A
one-paragraph description says that PCC &quot;intends to provide high speed
Internet services&quot; and that its initial target is in the Asia-Pacific
region. There is no information on how much the two partners have invested in
the project, nor what its turnover (if any) and net assets might be. The Stock
Exchange will doubtless require this information to be disclosed when the
circular goes out. </p>

<p>In the absence of any financial data it is impossible at this
stage to say what the deal is really worth to Tricom. However, one interesting
aspect is the consideration.&nbsp; </p>

<p>PCC is being transferred first into a Cayman islands holding
company, of which Tricom will hold 60% and Intel will hold 100,307 shares equal
to 40%. Hence we can calculate that Tricom will have about 150,460.5 shares in
the Cayman company. </p>

<p>PCD will receive 752,302,268 new shares in Tricom in exchange
for its 60% stake in the Cayman company, or <b>5,000</b> new shares per Cayman
share, while Intel will retain its 40% stake in PCC but have an option to sell
it over 10 years in return for 1,003,070,000 new shares in Tricom, or <b>10,000</b>
new shares per Cayman share. </p>

<p>What this suggests is that Intel thinks the Tricom shares are
worth 50% of what PCG thinks. Either that, or the terms of the purchase are not
equal. Note that at the end of the 10 year period, Tricom can require that Intel
exercises the option, forcing it to sell its 40% of PCC for the new Tricom
shares. If Tricom pays any dividends in the mean time, then Intel will be
compensated with more shares by lowering the conversion price. </p>

<p>In practice, the option arrangement is probably just a way to
keep the public float in Tricom at a level which the Stock Exchange will
tolerate, since it will already be reduced to 22.16% by this deal. </p>

<p>At the current inflated price level, the deal values PCC at an
amazing $8,777m. Perhaps most curious is the news that Intel will invest a token
US$50m
in new shares of Tricom at $5 per share. At that level, it only gets 0.75% of
Tricom on a fully-diluted basis. The deal also requires Tricom to invest at
least the US$50m in the business of PCC to enable PCC to buy equipment from
Intel for its projects. The announcement says: </p>

<blockquote>

<p>&quot;Intel currently is not a substantial
shareholder of the Company. Therefore, the technology agreement is not a
connected transaction for the company&quot; </p>

</blockquote>

<p>For some unknown reason, this seems to ignore the fact that
Intel will be a 40% shareholder of a subsidiary of Tricom (PCC) and therefore it
will be a connected party of Tricom. </p>

<h3>Dealings in PCRD</h3>

<p>Recent transactions in PCRD, Tricom's new parent, give us
insight into the directors' views. </p>

<p>Andrew Yang Fan Shing, Chief Executive of Pacific Century
Insurance, set the ball rolling by selling his entire holding of 100,000 shares
in PRC on 4-May-99 (the first dealing day after the Tricom deal) for S$5.2925
per share, or about <b>HK$2.44m</b> </p>

<p>Mr. Francis Yuen Tin Fan, Deputy Chairman of PCRD, is
beneficiary of a discretionary trust which sold 1,764,000 shares at S$7.35 per
share on 10-Jun-99 and another 2,029,000 shares at S$7.36 the next day, for a
total gross proceeds of S$27.9m, or about&nbsp; <b>HK$129m</b>. We can't blame
him for cashing in when the shares were up 387% from just S$1.51 prior to the announcement of
the Tricom deal. The sales cut his holdings by 62% to 2.355m shares. </p>

<p>PCRD also took advantage of its inflated price by placing 27m
new shares at S$4.95 per share on 24-May-99, to raise net proceeds of S$130.6m (<b>HK$602m</b>).
This boosted PCRD's net asset value from about S$1.32 to S$1.64 per share. The
placing was the maximum allowed under Singapore listing rules (10% of the
enlarged company per annum). </p>

<p>3 days later, on 27-May-99, a mysterious company called Pacific
Light International sold 9,563,832 shares out of 14,563,832 shares held by it,
also at S$4.95 per share. The whole block had been pledged to Pacific Century
Finance (BVI), in which Richard Li has a controlling interest, pursuant to a
loan agreement between it and Xie International Holdings. We know nothing else
about Xie or Pacific Light. The sale, which raised about S$47.3m (<b>HK$218m</b>),
resulted in the discharge of the loan and the remaining 5,000,000 shares were
released from the pledge. </p>

<p>The shares sold by Pacific Light do not appear to have crossed
the Singapore exchange, as only 1,800,000 traded that day. Perhaps they went to
satisfy excess demand from the placing 3 days earlier.&nbsp; </p>

<p>In fairness, we should also point out that Richard Li bought
2,000,000 shares in PCRD at S$4.50 per share on 23-Jul-99. Exchange volume that
day was only 877,000 shares, and the lowest price was S$4.92 with a close at
S$5.00, so the deal appears to be off-exchange. That was pretty good timing as
the stock rose to S$6.15 before it was suspended on 30-Jul-99 for the
announcement of the Intel deal. </p>

<h3>Dealings in Tricom</h3>

<p>There were a couple of big winners here. Most obviously, Star
Telecom (a listed subsidiary of China Strategic Holdings) found itself rich
beyond its wildest dreams when the Tricom shares went into orbit. So it sold
400m old shares on 19-May-99 through BNP Prime Peregrine, Lehman Brothers and
Kingsway SW Securities at HK$1.23 per old share ($6.15 per new share), raising <b>HK$479m</b>
net. This cut their holding from 74.8% to 57.5% before the deal with PCRD was
completed. </p>

<p>Star celebrated with a $0.20 special dividend to shareholders,
absorbing about $182m. It then split its stock 10 for 1, which takes it back down
into penny-share territory, and is renaming itself &quot;China Online (Bermuda)
Limited&quot;. This is the same company which sold its internet service provider,
Star Internet, to Cable &amp; Wireless HKT last year. How fashions have changed! </p>

<p> The remaining 266m shares Star holds in Tricom are worth about $1,329m
at current prices. Split-adjusted, Star Telecom's price has risen from&nbsp;$0.018
on 31-Mar-99 to $0.153 on 2-Aug-99, an increase of 750%, valuing Star at
about&nbsp; $1.39bn. The company is now in talks to buy a Chinese internet
content provider, helping it live up to its new name. </p>

<h3> Star Links with PCRD</h3>

<p>Meanwhile, on 29-Jul-99 China Strategic agreed to sell 135m old
shares of Star Telecom (or 1,350m after the split) to PCRD in exchange for
6,548,360 new shares in PCRD. This gives Star an inconsequential holding of only
2.15% in PCRD, while PCRD will hold 14.82% of Star Telecom, described as a
passive investment; PCRD will not seek a board seat. </p>

<p>In the announcement, there was a notable lack of reasons for
Star to be holding such a small percentage of PCRD shares and no commitment to
hold them for any period of time. Expect them to sell.&nbsp; </p>

<p>The transaction was a share swap in which CSH was able to value
the Star shares at HK$1.50 each (a premium of 14.5% to the last traded price)
while PCRD was able to value its shares at S$6.65 (a premium of 8.13% to the
last traded price). This is all a little hypothetical since in a share swap you
can raise or lower these prices by the same percentage and still make the sums
add up. We prefer to look at it as PCRD shares at market price of S$6.15 and
Star Telecom shares at $1.39. It's amazing what you can do with a calculator. </p>

<p>Presumably the main goal is that PCRD's involvement in Star
should help to achieve a strong share price for Star (sorry, China Online
Bermuda) ahead of its expected internet deal. The stock was up 17% yesterday at
$0.153 (ex-split). </p>

<h3> A surprise winner</h3>

<p>In an amusing side-show, a listed company called Companion Building Materials (Holdings)
hit the jackpot when it sold 68.7m Tricom shares, or about 3% of the company, on
4-May-99 (the first day after the announcement) at an average of $1.76 per old
share ($8.80 per new share) raising <b>HK$121m</b>. The shares had been acquired
in March-98 as a short-term investment. </p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
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