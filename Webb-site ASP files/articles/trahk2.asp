
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

<script type="text/javascript">document.title="On TraHK";</script>

	<div class="summary">The prospectus for the Tracker Fund is now out and we've read it. In this article we look at the complexities of how and when the discount and pricing will be fixed, the odd lots created by the loyalty bonus, and make an early assessment of the potential public demand.</div>

<h2 class="center">On TraHK<br>
<span class="headlinedate">25 October 1999</span></h2>
<p>The prospectus for the Tracker Fund of Hong Kong (TraHK) was
published today, and <i> Webb-site.com</i> brings you the key details. </p>

<p>To view the full
prospectus, go to the <a href="http://www.trahk.com.hk/" target="_blank">TraHK
web site</a> and use the password &quot;TraHK&quot; and city &quot;Hong
Kong&quot;. Then download the prospectus in PDF format (get the free Acrobat
reader first). Strangely, when we checked the site, we found that they've posted
the so-called &quot;red herring&quot; document used in the international
marketing, which has all sorts of stuff about Hong Kong from an international perspective.
This is contained in what professionals call a &quot;wrap-around&quot; - a set
of extra pages that go around (or in front of) the Hong Kong prospectus. For
example, the wrap-around says: </p>

<blockquote>

<p>&quot;an investment in Hong Kong securities may carry the risk
of less publicly available information, more market volatility, less strict
securities regulation, and greater political uncertainty than investments in
securities of other jurisdictions, such as the United States and the United
Kingdom.&quot; </p>

</blockquote>

<p>How refreshingly honest. Hong Kong investors are assumed to know
this, since the warning does not appear in their version of the prospectus. If
you don't know that by now, you shouldn't be investing. </p>

<h3>Loyalty units in Y2K</h3>

<p>As expected, the Government is offering you extra units in TraHK
for free if you will hold the ones you are allocated for at least one year.
You'll get 1 unit for every 20 still held after one year, and 1 for every 15
held (including the first bonus unit) if you hold them for a further year. </p>

<p>The prospectus actually says the first year expires on
12-Nov-2000 (or if not a business day, the next day which is a business day).
Perhaps they'll spend some of the issue proceeds on buying a Y2K calendar,
because 12-Nov-2000 is a Sunday - there's no speculation about that. So the
first bonus will probably be due on Monday 13-Nov-2000. </p>

<p>By the way, if you decide to apply, make sure you use the <u>white</u>
application form if you hold a HKID card and Hong Kong address. Those are the
two criteria to qualify for the loyalty bonus. A non-Chinese friend of ours
queued at the HSBC head office today in Queen's Road to pick up a prospectus,
and was given an English document stuffed with a <u>blue</u> form (for those who
don't qualify for the bonus). Apparently HSBC thinks that anyone who is not
Chinese must be a tourist. Thanks, guys. Why any tourist would want to apply for
TraHK is beyond comprehension. </p>

<h3>Odd Lots will be a problem</h3>

<p>Now because of the strange ratios used for the loyalty shares,
it will be very difficult to get whole board lots of loyalty units (each board
lot is 500 units). We explained in our <a href="trahk1.asp#boardlot">previous article</a> how the outdated board lot system works. After the first
anniversary, you'll be holding 21 units for every 20 you originally bought.
Multiply that by 16/15 for the second bonus, and you end up with 28 units for
every 25 you originally bought. Put simply, you get 12% more units than you paid
for. </p>

<p>As the prospectus notes, &quot;<i>odd lots usually trade at a
discount to the price of board lots</i>&quot;. Anyone who has ever tried to sell
odd lots of bonus shares will know what they mean. Typically a discount of 5%
for blue chips or 10% for second-liners might be in order. The prospectus also
states that &quot;<i>no special dealing arrangements will be put in place to
facilitate the trading or disposal of loyalty bonus units in odd lots</i>&quot;.
You're on your own, folks. </p>

<p>In order to get whole board lots of bonus units after 2 years,
you need to subscribe for a multiple of 25 board lots (12,500 units, but you
can't apply for that number because they only take applications for multiples of
2,000 units in that range). </p>

<p>In addition, if you want to retain the flexibility to get out in
whole lots after the first bonus, then you need to buy a multiple of 20 lots
(10,000 units). The lowest common multiple of 20 and 25 is 100. So buy 100 lots
(50,000 units) and you'll be fine. You'll get 2,500 units in the first bonus and
3,500 in the second bonus. But each unit has a maximum issue price of $13.80, so
that means buying $690,000 of units. Most people will not be in this league, so
most people will have odd lots. In any case, you might be allotted fewer units
than you apply for, ruining that strategy.&nbsp; </p>

<p>Ironically, one of the benefits being promoted in respect of the
TraHK is that &quot;<i>the minimum investment size in the IPO is lower than
buying board lots in the HSI constituent companies</i>&quot;. That's true, but
instead, most participants will get odd lots of loyalty units, something which
could have been avoided with smaller board lots. </p>

<h3>Discount to what?</h3>

<p>The prospectus is, to say the least, cryptic on the method of
determining the &quot;reference market price&quot; (<b>RMP</b>) against which
the issue discount is given. </p>

<p>If you dig deep enough then you find that the reference market
price (<b>RMP</b>) is based on the 3-day average of the EAS price. <b>EAS</b>
stands for &quot;Exercise and Alignment Settlement&quot; which uses the same
method that the Hong Kong Futures Exchange uses to determine the expiry price of
its futures contracts each month. In the case of TraHK, this means that you take
the average of the market price of each share at 5-minute intervals, excluding
the morning and afternoon opens (at 10:00 and 14:30) and the afternoon close (at
16:00). There are 47 such readings each day, of which 30 are in the morning and
17 in the afternoon. You then take the average EAS price for 3 days (or 141
readings) for each stock, and then use this to calculate the index on the last
day. </p>

<p>The 3-day average period in fact ends at 15:55 on Monday
8-Nov-99, 4-days after the retail offer closes (12:00 on Thursday 4-Nov-99). The
only part of the averaging period during which you can apply for the offer is
between 10:00 and 12:00 on Thursday 4-Nov-99. That's only 17% of the averaging
period (even if you are standing outside the bank, form in hand, watching the
Hang Seng Index). So in effect, you have no way of knowing what the market
reference price will be until after you have applied. </p>

<p>The institutional Offer is a bit better on timing. According to
a syndicate briefing seen by <i>Webb-site.com</i>, the &quot;book-building
period&quot; during which institutions must make their orders (which can be made
dependent on pricing) closes at 5pm in each time zone on Friday 5-Nov-99. So
they get the last bite at the cherry. If you are a US institution in New York
then that's 06:00 on Saturday 6-Nov-99, Hong Kong time.&nbsp; </p>

<p>The prospectus states that the Retail Issue Price will be &quot;<i>at
a discount</i>&quot; to the reference market price, whereas the Institutional Issue Price will be &quot;<i><u>at or</u> at a discount</i>&quot; to the RMP.
That's a subtle but deliberate difference - meaning that there is no minimum
discount on the institutional offer, and it could (theoretically) be done at the
average EAS. </p>

<h3>How big is big?</h3>

<p>That's one of the strangest things about this offer - there is
no fixed number of units being offered. That's not determined until after the
offer is over on 8-Nov-99. &quot;<i>How many do you want?</i>&quot; they ask.
&quot;<i>Depends on the price, mate</i>&quot; the institutions will say. The
Government cannot (for political reasons) be seen to give a greater discount to
institutions than to the retail public. At the same time, institutions don't get
the loyalty bonus, and they don't normally buy unit trusts - on the contrary,
they <i>run</i> them. So we can't expect great institutional enthusiasm unless
they are offered the chance of a seriously quick buck. </p>

<p>We've done our share of government privatisations (Scottish
Electricity in 1991 is remembered fondly). Over the weekend of 6-7-Nov-99, with
two thirds of the averaging period behind them, the bankers will be tallying all
the institutional and retail applications and determining how much demand there
has been. There will then be one more day of trading followed by a late night on
8-Nov-99 finalising the issue price and (in this unusual case) the amount of
units to be sold. We might see the Government deliberately &quot;scale
back&quot; retail applications a little to create the impression of a successful
offer. </p>

<p>The greatest fun will be had in the market on 4-Nov, 5-Nov and 8-Nov,
while the offer is closed but the pricing is still open. We can expect some
interesting arbitrage strategies to play themselves out. People will be selling
index futures short in anticipation of allocations, which will have a negative influence
on prices (in the absence of other factors, that means they go
down).&nbsp; If the market falls during the pricing period, then the reference
market price (averaged over the 3 days) will be higher than the closing price on
8-Nov. That will force the Government to set a larger discount to the RMP in
order to make the issue fly. That makes the units cheaper. In some ways, it is
the best outcome the government could hope for, because it could create a
&quot;feel good&quot; factor about the retail offer if people get it at a lower
price. </p>

<p>The Government will bear in mind that the public is locked-in
until the units start trading on 12-Nov. They will be keen to build in enough
&quot;cushion&quot; to reduce the risk of the units opening at a discount to the
issue price, in the event that the market falls in the 3 intervening days. The
ghost of an opening discount would be a difficult hurdle to overcome in future
Government offerings, and besides the TraHK we still have the planned float of
the MTRC. So we expect them to price on the cautious side. </p>

<h3>So will the Public buy it?</h3>

<p>Despite Hong Kong's image as a speculative nirvana, the latest <a href="http://www.sehk.com.hk/CCD/content/0225.htm" target="_blank">Secondary
Market Survey</a> by the Stock Exchange of Hong Kong in Jan-99 found that only
13% of those adults surveyed owned shares, while a further 3% had dealt in
shares in the previous 12 months. Investors made an average of 3 transactions in
the previous 12 months. The survey covered 2,154 adults by telephone, and
extrapolated from there, concluding that 16% of adults held shares (or had held
shares in the last 12 months) or about 841,000 investors. </p>

<p>The average income of these investors was estimated at HK$17,500
per month. In the optimistic case, you might think that around 400,000 people
might put an average of $20,000 into the Fund. That's probably at least a year's
average savings for someone in that position, and it would create <b>$8bn</b> of
public demand. That has to be at the top end of expectations. At the bottom end,
bear in mind that only an estimated 3% of adults own unit trusts, because most
investors prefer to play individual stocks. Even if the optimistic case is
correct, satisfying that level of demand would leave the market to absorb future
issues. </p>

<p>Don't be misled by the &quot;indicative size&quot; of the
initial offer of $10 billion. There's plenty more where that came from. In
Titanic terms, it's the tip of the iceberg. According to the prospectus, the
Government portfolio was worth <b>$198bn</b> on 20-Oct-99. For this reason
alone, it is politically crucial to the Government that this first offer (of
many) goes well. If they price it too tightly and the market falls the following
week, then the great public of Hong Kong will not be begging for more. </p>

<p>Some of those public investors that buy the Fund are likely to
be selling existing stock to fund their subscription of TraHK. That could
pressure the market and make their units cheaper. We find it highly unlikely
that many &quot;stock market virgins&quot; will make the TraHK their first
investment, due to its complexity and novelty. Individual stocks are far
simpler. Just because there is a wide brand recognition of the &quot;Hang Seng
Index&quot; does not mean that the general public understands how it works and
what a tracker fund is. </p>

<h3>Commissions</h3>

<p>If your broker tells you that this is the best thing since
sliced bread, take it leavened with a large pinch of salt. Even the lowest
broker in the food chain will collect 1.75% from the Government and 1% from you
for selling the TraHK. That's a total of 2.75%, 11 times more than they might
get by buying blue chips for you in the market (0.25%). </p>

<p>The 3 Global Coordinators get an extra 0.25% of everything, and
the 24 Retail Managers (including the Global Coordinators) get another 0.25%.
They include several of the brokers who bought stock for the Government during
the Aug-98 intervention. In total, the Government will spend up to $250m on
commissions, plus advertising, legal, printing and other expenses. </p>

<p>If you are being charged 1% brokerage for the TraHK units, you
should mentally deduct 0.75% from the issue discount, bearing in mind that you
could pay only 0.25% to buy stocks in the market. Institutional investors will
make the same calculation, unless their broker offers to rebate some of this
charge. </p>

<p>That's enough for today. In our next article we'll explain the
&quot;Tap&quot; structure which allows the Government to create more units after
the offer. We'll also take a look at how liquid the secondary market might be,
and what factors will affect the market price relative to the Hang Seng Index.
And don't worry, we haven't forgotten - before the offer closes we'll look at
hedging strategies. </p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=7679">EXCHANGE FUND INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51819">Tracker Fund of Hong Kong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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