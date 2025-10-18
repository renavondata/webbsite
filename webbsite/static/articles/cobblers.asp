
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

<script type="text/javascript">document.title="A Load of Cobblers";</script>

	<div class="summary">It's nearly Christmas, and time for Webb-site.com's annual gift to our readers, a small-cap delight to put in your stockings. At last - something positive from the gloomiest site in town! Last year's pick, Boto International, outperformed the HSI by 32.6% in a year. Read on to see who gets our vote this year.</div>

<h2 class="center">A Load of Cobblers<br>
<span class="headlinedate">4 December 2000</span></h2>
<p>Last year, we began a long tradition (this is the internet,
remember) of saying something nice about a local company for Christmas. 'Tis the
season of &quot;goodwill to all balance sheets&quot; or one of them at least.
First we'll do something you seldom see the professional analysts do - look back
at how our previous recommendation performed. </p>

<h3>Last year's Pick</h3>

<p>Last year's pick on 5-Dec-99 was <a href="../dbpub/articles.asp?p=4778" target="_blank">Boto
International Holdings</a>, which closed the previous Friday 3-Dec-99 at $0.206
per share, split adjusted. The stock closed today at $0.226, up 9.7% on the
year. But that's only half the story. In addition, dividends during the year
were 0.56 cents (ex-dividend on 28-Dec-99), 1.65 cents (3-Aug-00) and 0.6 cents
(23-Nov-00). That's a total of 2.81 cents, or 13.6% return. Add those together
(we'll keep it simple) and you have a total return of <b>23.3%</b>. </p>

<p>At the same time, the Hang Seng Index, including reinvestment of
dividends, has lost 7.0% between 30-Nov-99 and 30-Nov-00 (we only have monthly
data). Put $1,000 in the HSI a year ago, and you'd have $930. Put $1,000 in
Boto, and you'd have $1,233. So Boto has out-performed the HSI by <b>32.6%</b>. </p>

<p>We still like Boto, and their new outdoor furniture business
seems to be coming along nicely, giving them something to do when they are not
making the largest share of America's plastic Christmas trees. On the downside,
they indulged in a pointless 5 for1 share split this year, and also seem to be
wasting a modest amount of money on a <a href="http://www.drfestive.com/" target="_blank">web
site</a> which is the brainchild of the Chairman's son. The spike in plastic
prices (due to oil prices) dented the interim results for Sep-00 a bit, but we
expect that will be passed on to customers next year. </p>

<h3>This year's Pick</h3>

<p>So what do we do for an encore? Well, look no further than your
shoe cupboard. Do you have a pair of Caterpillar, Skechers, Stride Rite,
Timberland or Wolverine shoes? How about Bates, Clarks, Great Lakes, Harley
Davidson, Hush Puppies, Merrell, Paul Smith, Sperry Topsider or Tommy Hilfiger
shoes? All of these brands are customers of this year's pick, manufacturer
Kingmaker Footwear Holdings Limited (<b>Kingmaker</b>). </p>

<p>This company makes a specialty of what it calls &quot;rugged
footwear&quot; (hiking boots) and shoes for babies and children. These products
tend to have higher margins than your average sports shoes or trainers. </p>

<p>The company has 20 production lines in the PRC employing 8,500
people. At today's closing price of <b>HK$1.16</b> per share, it has a market
capitalisation of HK$668m (US$85.6m) of which 60.1% is owned by the directors.
Four founders each with 19 years of service are on the board. </p>

<p>Net cash in the balance sheet at 31-Mar-00 (after allowing for
the dividend) was $412m, or <b>$0.72</b> per share with no debt. Strip that out
and you have an enterprise value of $256m. Earnings before interest, tax and
depreciation last year were $130m so the company's EV/EBITDA multiple is just <b>2.0x</b>. In plain English, that's cheap. </p>

<p>Fully diluted earnings per share for the year to 31-Mar-00 were
22.3 cents (adjusted for a subsequent 1:4 bonus issue), for a p/e of just <b>5.2x</b>.
The company's earnings have exhibited steady upward growth in the last 4 years: </p>

<img class="center" alt="" src="../images/cobble2.gif">

<p>Kingmaker has been bumping up against its capacity limit with
over 90% utilisation last year, but expansion plans are underway, with a factory
in a Vietnam export zone expected to become fully operational with 3 production
lines in early 2001. This new facility will allow up to 8 production lines so
they have room to grow. Vietnam has not been an easy place to do business for
many foreign investors, but the Chairman told us at the recent Annual General
Meeting that he was confident that the export zone would make this a lot less
problematic. </p>

<p>We'd expect higher oil prices to have a short-term negative
effect on materials costs in terms of the soles of the shoes and boots, but much
of this can be passed on to customers in the long run, since it affects all
manufacturers. Around 70% of sales are to the US and 21% to Europe, so the
company would be affected by any consumption slowdown in the US. </p>

<h3>Buy-backs</h3>

<p>Kingmaker went through a phase in 1998 of using some of its
surplus cash (yes, it was cash rich even then) to buy back some of its shares,
repurchasing 5.4% of the company in the year to 31-Mar-99, but they have not
done so since then. </p>

<p>That's a shame, because when your p/e is that low, buybacks
enhance earnings per share for the remaining shareholders. A repurchase of
another 5%, or 28.8m shares, at the current price would cost HK$33.4m. If they
are getting 5.75% interest on deposits, that would imply a profit reduction of
$1.9m, but the reduced number of shares would produce an improvement in earnings
per share of around 3.3%, justifying a higher price without any change in the
p/e. </p>

<p>Kingmaker has excessive cash on hand and when you consider that
it has annual operating cash inflow of over HK$100m p.a., there's no excuse for
hanging on to such a pile. Public investors do not reward companies for sitting
on cash, because that's a bad use of capital and outside their control. We urge
the company to distribute any cash that they won't need for at least a year.
That would boost the rate of return on the remaining capital, which would in
turn help the share price. As a business, they've performed well in the past, so
if they later needed to recall the distributed cash for expansion (by way of a
rights issue), shareholders are highly likely to support it. </p>

<p>Meantime, we'll play King-maker to Kingmaker and suggest you put
some under the Christmas tree. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2288">KINGMAKER FOOTWEAR HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=110">Christmas picks</a></li>
				
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