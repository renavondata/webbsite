
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

<script type="text/javascript">document.title="Henderson's Painted Corner";</script>

	<div class="summary">In an announcement that is worth only slightly more than the cost of printing it, Henderson Land has increased its privatisation offer for Henderson Investment by 3.4%, to $7.60 per share, and made this their final offer. Now the choice is quite simple, and we recommend readers to vote against the transaction.</div>

<h2 class="center">Henderson's Painted Corner<br>
<span class="headlinedate">3 December 2002</span></h2>
<p>Well there's just no escape. <i>Webb-site.com</i> disappeared to Australia
for a long weekend, and came back this morning to a torrent of e-mails and
voice-mails complaining that Henderson Land has shot itself in the foot. </p>

<p>Following our earlier <a href="lobidforhi.asp" target="_blank">criticism</a>
and Templeton's <a href="hitemple.asp">objection</a> to the proposed
privatisation of Henderson Investment Ltd (<b>HI, </b>0097), a number of other
institutional investors made contact with us and some also complained to the
offeror directly. None of the institutions we spoke to was in favour of the
first offer, and unsurprisingly, nobody we have spoken to today is happy with
the increased offer. </p>

<p>In an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021202/LTN20021202012.pdf" target="_blank">announcement</a>
dated 29-Nov-02, Henderson Land Development Co Ltd (<b>HLD, </b>0012) increased
its offer by 3.4% from $7.35 per share to <b>$7.60</b> per share <i>&quot;having
taken into consideration the views of various [HI] shareholders&quot;</i>. </p>

<p>That still falls a long way short of our estimate of fair value of the
underlying assets of $12.26 per share. OK, we never expected that a Hong Kong
company would offer fair value, but at least somewhere in the middle (reflecting
a minority discount) would have made sense to most investors. </p>

<p>The most that can be said about the new offer is that it now reflects the
market price of the 36.42% shares in The <a href="http://www.hkcg.com" target="_blank">Hongkong
and China Gas Co Ltd</a> (<b>HKCG</b>, 0003) which closed on 29-Nov-02 at $10.30
per share, valuing HI's interest at $7.58 per share. That's not saying much,
because unlike market participants, HI is not just a minority shareholder in
HKCG, but has a controlling stake, and there would be some premium for control
if the stake in HKCG (or the 75% stake in HI itself) were ever sold. </p>

<p>Apart from that, if the offer succeeds, HLD will be getting the remaining
HK$4.68 per share of assets for free, for an overall <b>38%</b> discount to fair
value. Based on the 747m HI shares not held by HLD, that adds up to some <b>$3.50bn</b>
of assets for free, or around $2.03 per HLD share. </p>

<p>Since the offer was announced on 5-Nov-02, and up to 29-Nov-02, HLD shares
have risen <b>10.4%</b> from $25.10 to $27.70, and the Hang Seng Property
Sub-Index has risen <b>6.9%</b> from 11,599 to 12,404, not least because of the
Government's package of nine measures to boost the residential property market.
So HLD's puny <b>3.4%</b> offer increase is in fact less than the increase in
the property index since it's first offer. </p>

<h3>In a corner</h3>

<p>Unfortunately, HLD has now painted itself into a corner by making a &quot;no
increase statement&quot;. Under Rule
18.3 of the 
<a href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Takeover Code</a>, only in <i>&quot;wholly exceptional
circumstances&quot;</i> will the offeror be allowed to increase the offer price
(HLD has reserved the right to amend the other terms of its proposal). The main
such circumstances would be a competing bid situation, which is highly unlikely
given that HLD owns 73.5% of HI, so any such bid would require its consent. So
in effect, the offer price is final. </p>

<p>This leaves HI shareholders with a simple choice: either vote against this
deep-discount privatisation offer, or receive $7.60 per share and give HLD
$3.5bn of asset value for free. It only takes 2.49% of the company (which is one
tenth of the free float of 24.87%) to block this deal. There's a very good
reason for that rule - in these situations, it is practically impossible to
prove whether any &quot;independent&quot; shareholders are actually acting in
some way for the offeror, so the rules are structured to make it harder to
squeeze out genuinely independent shareholders.&nbsp; </p>

<p>Prior to the increased offer, <i>Webb-site.com</i> had indications from
holders of 2.5% of the company that they were opposed to the first offer, with
the Tracker Fund yet to make a decision (will they ever?) in respect of its 1%,
and the remaining 21.4% in unknown hands. It seems very unlikely that people who
thought $7.35 was unfair enough to vote against the deal, will be leaping for
joy at $7.60. It is puzzling that HLD bothered to make an increase at all, since
the odds of success cannot be much greater at $7.60 than they were at $7.35. </p>

<p>HLD has given one hint to its somewhat bizarre behaviour - apparently its
offer, at a total price of $5.68bn, is entirely debt financed. HLD Vice-Chairman
Colin Lam was quoted by a local Sunday newspaper as saying: </p>

<blockquote>

<p>&quot;It will be funded by a syndicated loan with the company has already put
in place. We are paying 2.5% per annum, which is a relatively low carrying cost,
which is beneficial for [HLD]&quot; </p>

</blockquote>

<p>Sure it is. What's good for HLD is bad for HI. Read between the lines. Banks
will only lend at those kind of rates if they have plenty of collateral - in this
case, we reckon the loan-to-value ratio on the investment is about 62%. It
appears that HLD was only willing to increase its offer to the extent that the
bankers would pay for it. In fact, with HKCG shares yielding 3.1%, this will
more than cover the cost of the 2.5% loan. In addition, at the end of last year
HI had 1.8m sq ft of rental property which returned $607m of gross rental
income. HI also owns two hotels in HK and profitable mainland toll-bridge and
toll-road joint ventures. </p>

<p>If the offer fails, then under Rule
31.1 of the Takeover Code, HLD cannot make another offer for 12 months after
the date of failure. By making such a paltry increase and a &quot;no
increase&quot; statement, HLD may have killed its own deal. </p>

<h3>The downside</h3>

<p>The short-term share price downside if the deal is blocked may not be that
great due to three factors since the first offer was announced: </p>

<ul>
  <li>interest rates have been cut;</li>
  <li>the residential property sector (in which HI and
    its associates have large plays) has been boosted by the Government's
    &quot;nine measures&quot; package; and</li>
  <li>HLD has shown that it wishes to take HI private,
    which indicates (a) that it sees value in the stock and (b) that it may try
    again.</li>
</ul>

<h3>HLD Shareholders take note</h3>

<p>If you are an HLD shareholder and are sitting there smugly looking at the
$3.5bn enhancement to HLD's asset value that this deal could bring, then wipe
that smile off your face. Hasn't it occurred to you that you are also a minority
shareholder in a Henderson group company? If the group treats one company's
minority this way, there is every reason to suppose that it would treat
minorities in HLD and all the other group companies with the same attitude.
First law of Hong Kong pyramids: the future corporate governance of any company
is only as good as the weakest link in the group. If Mr Lee, who owns 65% of
HLD, were ever to privatise the rest, you would only see a fraction of its fair
value. </p>

<p>The next few weeks will be interesting - hedge funds who bought the stock
hoping for an increase have got it, and may sell out. Investors who believe in
the long-term fundamental value of their holdings will stay in and vote against,
able to tolerate some short-term downside in the share price if the deal is
blocked. If they sell now, then they will be increasing the probability of the
deal succeeding and clearly don't believe in the upside. </p>

<p>HLD, which should know the prospects of HI better than anyone, has chosen
this time to make the offer. If you sell out, you are betting against them. Vote
this one down and set an example to any other tycoon contemplating a low-ball
bid for your minority holdings. </p>

<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=413">HENDERSON INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=412">HENDERSON LAND DEVELOPMENT COMPANY LIMITED</a></li>
				
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