
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

<script type="text/javascript">document.title="Listing Rules Review Part 1: Stop Displacement";</script>

	<div class="summary">The SEHK has published a long-awaited consultation paper on amendments to the corporate governance aspects of its Listing Rules. It's 175 pages long, so we'll being covering this in a series of articles before making our concluding submission. We start with the general placing mandate for non-pre-emptive issues, where the Exchange proposes cosmetic changes which fail to bring Hong Kong up to international best practice.</div>

<h2 class="center">Listing Rules Review Part 1: Stop Displacement<br>
<span class="headlinedate">23 January 2002</span></h2>
<p>If you own an apartment in Hong Kong, then you also own a
proportionate fraction of the underlying government land lease, the fraction
typically being the ratio of your floor area to the total floor area of the
apartment block. Shares in companies are similar - you own a percentage of the
company and all its underlying assets, being the ratio of your shares to the
total number of shares in issue. </p>

<p>How would you feel then, if the building's owners committee
decided to sell newly-created fractions of that land lease, say 20% at a time,
diluting your ownership rights? And what if one owner holds the majority of the
votes in the committee, and keeps on issuing new fractions of the land to his
&quot;best friends&quot;, who he claims are independent and not acting as his
nominees? Pretty unfair, isn't it? You start off owning say 1.00% of the land,
after the first issue, you only have 1/1.2=0.83%, and after 4 such issues you
only have 0.48%. Your property rights have been diluted in half. </p>

<p>In terms of listed companies, this is what is known as a
&quot;non-pre-emptive issue&quot; or &quot;no first refusal&quot;. It means that
existing shareholders are not given the right to maintain their voting stake by
subscribing for their share of a new issue, nor do they have the opportunity to
sell their rights in the market. </p>

<h3>The General Mandate</h3>

<p>The &quot;general mandate&quot; rule in Hong Kong allows an
issuer to obtain approval from shareholders (including the controlling
shareholder) to make non-pre-emptive issues of shares for cash, up to a number
equal to 20% of the existing issued shares. So for example, a company with 100m
shares in issue can issue 20m more. </p>

<p>The approval needed to issue these shares is an ordinary
resolution, requiring a 50% majority of those who vote. In Hong Kong, there is
no requirement that each voting share be counted, only a show of hands (in which
the public, via depository HKSCC, are represented by only one hand), and the
SEHK does not propose to change that, but we will cover voting procedures in our
next article in this series. </p>

<p>As a consequence of low voting turn-out, the show of hands, and
often an outright controlling stake, it is easy for a controlling shareholder,
who normally also runs the board, to propose and approve themselves a new
general mandate. There is no limit on the frequency with which companies can
seek a fresh mandate from shareholders. Indeed, there is not even a requirement
in the Listing Rules that they make an announcement that they are doing so. Some
simply send out a one-page notice of special general meeting, which most
beneficial owners would never see, since their broker or custodian holds the
stock. </p>

<h3>Case study 1 - it's raining placings</h3>

<p>We've written about bad governance arising from the general
mandate on many previous occasions. Take for example, <a href="../dbpub/articles.asp?p=4970" target="_blank">Singapore
Hong Kong Properties Investment Ltd</a> which, incidentally, doesn't own any
Singapore properties. When we wrote that <a href="singhk.asp" target="_blank">story</a>
in Jul-99, the company had made 7 placings in less than 6 months, getting
through 4 general mandates and one specific approval in the process. It had
increased it share capital by 193%, and diluted net asset value by 45%. After we
wrote that story, the company went on to do many more placings, and the price
has fallen 98% from $0.047 to $0.001 (the minimum SEHK offer price, hence no
bid). Now they are <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011228/LTN20011228054.doc" target="_blank">proposing</a>
to rename the company &quot;Baolong Aerospace (Hong Kong) Ltd&quot; in
conjunction with an acquisition which, incidentally, has nothing much to do with
Aerospace - it makes motor coaches. Go figure. </p>

<h3>Case study 2 - the Dilution Solution</h3>

<p>In another case, just one general mandate placing was enough to
cause problems. A cash shell called <a href="../dbpub/articles.asp?p=7078" target="_blank">Pacific
Challenge Holdings Ltd</a> (<b>PCH</b>) had a 26.12% substantial shareholder,
Kistefos, who had used its votes to block a <a href="centsibility.asp" target="_blank">proposal</a>
by the 30.00% controlling shareholder (E1 Media Technology Ltd, controlled by Dr
Lily Chiang) to sell to PCH a tiny dot-com in return for almost all the cash in
the listed company. Kistefos was able to block this thanks to the connected
transaction listing rules which required independent shareholders' approval, and
the fact that they demanded a poll. </p>

<p>Shortly afterwards, the controlling shareholder (through its
board control) <a href="pchplacing.asp" target="_blank">decided</a> to do a
placing of new shares for cash, even though PCH had no need for it, sitting on a
cash pile. They used almost all the 20% general mandate (19.93% to be exact),
issuing 23.8m new shares to each of two individuals, who met the technical
definition of &quot;independent&quot;, although one of them was a life-long
employee of another listed company founded by Dr Chiang's dad. You get the
picture. </p>

<p>This non-pre-emptive placing diluted Kistefos down to <b>21.78%</b>,
and shortly afterwards, backed by reputedly the richest man in Norway, Kistefos
went off to court in Bermuda (where PCH is domiciled) and is <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011004/LTN20011004022.doc" target="_blank">still
seeking</a> legal redress there. Its an extremely rare case of legal action
which is unaffordable to most investors. Meanwhile, Dr Chiang and E1 Media were
busy buying up shares which just happened to be available in the market,
increasing their stake by 23.552m shares (coincidentally, just a shade less than
the amount placed with each of the 2 placees) from 25.31% to <b>33.53%</b>
between 5-Oct-00 and 15-Jan-01. </p>

<h3>International Best Practice</h3>

<p>As we first explained as long ago as 17-May-99 in our article <a href="placing.asp" target="_blank">The
Placing Game</a>, in the UK, from which HK's market derives most of its
regulatory framework, the standard is firstly that the law contains statutory
rights of pre-emption, and secondly these should only be waived in respect of
issues for cash which are: </p>

<ul>
  <li>a maximum of 5% of the company in any one year</li>
  <li>a maximum of 7.5% in a rolling 3-year period</li>
  <li>a maximum discount of 5% to the market price</li>
</ul>
<p>These <a href="http://www.ivis.co.uk/pages/gdsc4_2.html" target="_blank">Pre-emption
Guidelines</a> were actually set by institutional investors in 1987 through the <a href="http://www.ivis.co.uk/pages/gdsc4_1.html" target="_blank">Pre-emption
Group</a>, which includes issuers. The investors are able to do so due to the
near-absence of controlling shareholders, and as a consequence it is extremely
rare for any listed company to breach these guidelines. That's the key
difference to Hong Kong -&nbsp; in the UK, investors can make policy rather than
suffer it.</p>
<h3>The SEHK's Position</h3>
<p>On page 36 of the new <a href="http://www.hkex.com.hk/library/listpaper/Corporate%20governance%20issues.pdf" target="_blank"> Consultation
Paper</a>, the SEHK notes the UK
position, but then goes on to claim that Hong Kong is somehow different - an
argument which simply doesn't wash. The SEHK writes, in relation to pre-emption:</p>
<blockquote>
  <p>&quot;In Hong Kong, many issuers, especially the GEM ones, are
  relatively small in size and rely on external funds to develop their
  operations..... we consider that the limits contained in the Pre-emption
  Guidelines to be too restrictive for our market.&quot;</p>
</blockquote>
<p>What garbage. That's the old &quot;our market is different&quot;
excuse trotted out again. Do we want to reach international best practice or
not?&nbsp; In nearly every market, the majority of issuers by number are
&quot;relatively small&quot; compared with the blue-chips - that's the nature of
market distribution, and the UK also has hundreds of small listed companies,
including its own second board (<a href="http://www.londonstockexchange.com/aim/default.asp" target="_blank">AIM</a>).
It is also true in all markets that many listed companies &quot;rely on external
funds&quot; for their growth - or else why would they list in the first place?</p>
<p>Despite all this, UK investors have still determined that they
prefer, as owners of their companies, to protect their property by going through
rights issues to raise cash rather than non-pre-emptive issues.</p>
<p>It is certainly true that a placing takes less time than a
rights issue, but the extra time and documentation is a minor cost in return for
the preservation of investors' fundamental rights to protect their property and
choose whether to take up their rights or allow their stake to be diluted, in
which case they may be able to sell their rights to someone who wants the new
shares.</p>
<p>On pricing, the SEHK offers similar platitudes. Instead of the
UK best practice of a maximum 5% discount to market price, it proposes a limit
of 20%, unless there are <i>&quot;exceptional circumstances&quot;</i>. Whilst
this might seem like an improvement from the current absence of any&nbsp; limit
at all, in practice, the vast majority of HK placings would already fit within
that discount. So no big deal.</p>
<p>One small improvement is offered by the SEHK, namely that
controlling shareholders who sell stock in a placing and simultaneously
subscribe new shares (what is known as a &quot;placing and top-up&quot;) should
no longer be allowed to maintain their voting stake by subscribing more shares
than they placed out. We of course support the removal of this &quot;pre-emption
for us but not for you&quot; rule. However we note that it is very easy for the
controller, through the placing, to warehouse stock with supposedly
&quot;independent&quot; parties and then transfer it back later, recovering
their voting rights. That is at the root of most of the abuses of the general
mandate, because it will nearly always be impossible for regulators to detect
when such back-door placings are going on.</p>
<h3>Quarterly reporting</h3>
<p>So there you have Part 1 of our review of the Consultation
Paper. Not a great start, and it doesn't get much better.</p>
<p>The paper does contain good news in the form of a proposal for
quarterly reporting, for which we can thank China's regulator, the CSRC, who
have required it in mainland stock markets starting this first quarter of 2002.
Peer pressure is a wonderful thing, and Hong Kong's embarrassment at being
overtaken has pushed the lackadaisical SEHK into action - but even now, we hear
some companies complaining that quarterly reporting would be too much work, or
that too much disclosure might cause short-termism and volatility.&nbsp;</p>
<p>There you go again, that old &quot;Hong Kong is different&quot;
excuse. Investors can't cope with all that information. Good point, let's
abolish all reporting, then companies can save time and money, and we can all
trade on pure speculation - unless of course, you are a controlling shareholder,
in which case you already run the company and have all the facts at your
fingertips.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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