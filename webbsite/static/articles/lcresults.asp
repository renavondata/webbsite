
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

<script type="text/javascript">document.title="Investors Respond to Lane Crawford Results";</script>

	<div class="summary">We give our initial views on the final results of Lane Crawford, in the context of the proposed privatisation which the investors represented by Webb-site.com continue to oppose on the current terms. The results contain no surprises, but from the fresh figures we find that Wheelock is offering only $11.80 per A-Share for readily saleable assets worth $12.53 per A-Share and gets the retail business and brand for free. The sums just don't add up.</div>

<h2 class="center">Investors Respond to Lane Crawford Results<br>
<span class="headlinedate">9 June 1999</span></h2>
<p class="revisedate">updated 10 June 1999</p>

<p>In <a href="lane.asp">yesterday's article</a>, we stated that we expected
the results for the year ended 31-Mar-99 to be pretty poor. No surprise then, that the
company announced an operating loss of $23.8m, or $0.21 per A-Share. Very few retailers
have made money this year.</p>

<h3><small>Exceptional loss</small></h3>

<p>In addition, Lane Crawford made an exceptional provision of $42.5m for
&quot;<em>costs relating to cessation of retail operations of a subsidiary</em>&quot;. We
don't know which store or stores this is - perhaps the Company will disclose this at a
later time.</p>

<p>The results contained no mention of the 80%-owned Shanghai Maison Mode
Department Store. A year earlier, the Company said that Maison Mode &quot;<em>has
progressed beyond the operational breakeven point</em>&quot; and last December, with the
interim results for 30-Sep-98, they wrote &quot;<em>the Mainland Business is starting to
make profit</em>&quot;.</p>

<p>At 31-Mar-98, Maison Mode was the only non-wholly owned principal
subsidiary of Lane Crawford. The minority interest in the balance sheet was $7.5m,
presumably representing 20% of Maison Mode's net assets and implying $37.5m for the whole.
There were no such minorities in this year's balance sheet. So perhaps this is the closure
the results refer to. If they have ceased this business, then it is in contradiction of a
statement last year that &quot;<em>the Group continues to take a long term view of the
market potential in the mainland</em>&quot;.</p>

<h3><small>Balance Sheet</small></h3>

<p>Although we don't have all the details at this stage, the Group disclosed
a summary balance sheet which shows net assets of HK$2,088m.</p>

<p>This includes a stock portfolio with a book cost of $741.8m at 31-Mar-99,
compared with $830.5m a year earlier. So there has been some movement. We will know more
when the accounts are published.</p>

<p>While the content of the portfolio was still not disclosed, it was valued
at $501m at 4-Jun-99, an increase of about $53m or 12% since the 31-Mar-99 year-end. That
adds $0.47 per A-Share to the net asset value, and gives the portfolio a value of <strong>$4.43</strong>
per A-Share. The company has not disclosed whether any gains or losses have been realised
since the year end. The Hang Seng Index has risen another 3.7% since 4-Jun-99. </p>

<p>The Company states that Chesterton Petty has professionally valued its
properties at $916m as at 31-May-99. That is actually higher than our estimate yesterday
for Lane Crawford House of $800m, but we are not professional valuers, and it may include
other small properties, so we'll take their word for it. The value is equivalent to <strong>$8.10</strong>
per A-Share.</p>

<p>Taking into account the deficit on the portfolio (compared with carrying
cost) and the small surplus on the property value since 31-Mar-99, the pro forma net
assets are $1,850m, or <strong>$16.36</strong> per A-Share.</p>

<div class="regbox">
	<p><strong>Update, 10-Jun-99:</strong></p>
	
	<p>It is interesting to note that in the original announcement of the Scheme
	on 25-May-99, the net asset value at 31-Mar-99 was estimated at $16.4 per A-Share.</p>
	
	<p>Without the exceptional provision of $42.5m for closure of a retail
	business, the portfolio gain of $53m since the year-end would have raised the NAV figure
	to $16.74 per A-Share, making the offer look even less attractive. Did the Company decide
	on this provision since the first announcement? Or since we announced our opposition to
	the Scheme? It also makes the bottom-line loss of $66.6m almost 3 times worse than it
	would have been.</p>
</div>

<p>So the sums are again easy - the value of the portfolio and the property
is <strong>$12.53</strong> per A-Share, compared with an offer price of only <strong>$11.80</strong>
per A-Share. So Wheelock is effectively offering to charge us $0.73 per A-Share to take
the retail business and its 149 year-old brand away from us. Here's a revised table for
shareholders to consider:</p>

<table class="numtable center">
  <tr>
    <td>&nbsp;</td>
    <td>Offer<br>value<br>HK$m</td>
    <td>Net assets<br>HK$m</td>
    <td>NAV per<br>A-Share </td>
  </tr>
  <tr>
    <td class="left">Offer value for 100% of the Company:</td>
    <td>1,334</td>
    <td>1,850</td>
    <td>$16.36</td>
  </tr>
  <tr>
    <td class="left">Less: value of share portfolio at 4-Jun-99</td>
    <td>(501)</td>
    <td>(501)</td>
    <td>($4.43)</td>
  </tr>
  <tr>
    <td class="left">Less: estimated value of property, 31-Mar-99</td>
    <td>(916)</td>
    <td>(916)</td>
    <td>($8.10)</td>
  </tr>
  <tr class="total">
    <td class="left">Price (RECEIVED) for privatising<br>
    <strong>Net Retail Assets</strong> and brand:</td>
    <td>(83)</td>
    <td>433</td>
    <td>$3.83</td>
  </tr>
</table>

<p>Obviously the same figures apply proportionately to the 25% minority shareholders. If
Lane Crawford were to sell its stock portfolio and distribute the proceeds, the <strong>dividend
</strong>would be about <strong>$4.43</strong> per A-Share and <strong>$0.443</strong> per
B-Share. If the privatisation does not proceed, then we urge the Company to do this. In
the interim results the Company said that it was &quot;<em>virtually debt-free with net
surplus cash</em>&quot; and clearly if the funds were needed then they would not have been
playing the stock market.</p>

<h3><small>Other Comments</small></h3>

<p>Lane Crawford states in its results that &quot;<em>Apart from the Central Store at Lane
Crawford House which is owned by the Group, all the other three stores are operated at
leased premises</em>&quot;. This is true. One is at Pacific Place, owned by Swire Pacific,
and the other two are at Ocean Terminal and Times Square, owned by Lane Crawford's sister
company Wharf.</p>

<p>The company continued that it &quot;<em>faces lease renewal risks for its store
operations</em>. <em>Consequently the results... would to a large extent depend on the
renewal lease terms secured from landlords upon tenancy expiry</em>&quot;. It said &quot;<em>when
stores and other retail outlets are set up at new locations, substantial capital
expenditures would be required</em>&quot;.</p>

<p>Is this some kind of threat? Reading between the lines, are they implying that, if we
don't agree to privatisation, then Wharf will be difficult when the leases come up for
renewal? We hope not - these are connected transactions between two related companies
which must be done on arm's length, at fair and reasonable terms. In any case, since
Wheelock owns more of Lane Crawford (75%) than it does of Wharf (48%) it would be against
Wheelock's own interests to make life difficult for the retailer.</p>

<p>We don't know when the lease on Pacific Place expires, but the two Wharf leases both
expire on 30-Nov-2002 so it will not be an issue for over 3 years. Besides, market rentals
have fallen due to the poor retail market demand, so it should be possible to negotiate
better terms when leases renew, either at Wharf or by moving elsewhere. On the other hand,
if asking rents are picking up then that will only be because retail sales are improving,
which will be good for future profits.</p>

<p>Lane Crawford points out that it has spent HK$262m on capital expenditure in the last 5
years. That's no surprise - capital assets are depreciated each year through the income
statement. Shareholders should not misunderstand this figure - you don't charge capital
expenditure directly to profit and loss account. That's because the money is spent on
assets which generate future income. Capital expenditure is a <u>good</u> thing when done
well.</p>

<p>Some of the last 5 years' expenditure relates to the failed Singapore store, and some
more relates to the Maison Mode store in Shanghai. </p>

<h3>Summing up</h3>

<p>That's the problem - the sums don't add up. Wheelock is offering $11.80 per A-Share for
something worth <strong>$16.36</strong>, and its getting readily saleable assets in the
form of property and shares worth <strong>$12.53</strong>.</p>

<p>Yes, the retail market is bad, but when the economy recovers people will start
shopping. Wheelock has just started shopping early, and we share their optimism.</p>

<p>The Company pours as much doom and gloom as possible into its statement. When a
controlling shareholder is trying to privatise a company, it makes sense to make things
look as bad as possible, to encourage shareholders to get out. Frankly the only surprise
in this announcement is that the figures did not contain more provisions and that the
property was not valued lower.</p>

<p>Our intention remains to vote against this transaction, and as we have more than 10% of
the public B-Shares, it will not proceed without our support.</p>

<p>Readers will know that the author used to work for Wheelock. We know them to be
reasonable people. In 1993, Wharf (Holdings), controlled by Wheelock, increased its offer
for Harbour Centre Development from $9.00 to $10.50 per share. Shareholders narrowly voted
against the transaction.</p>

<p>This shows that the group is open to reasoned debate, and we hope that when they have
had time to consider shareholders' views then they will do the honourable thing and
increase their offer to a level which is fair and holds the possibility of success.</p>

<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=348">LANE CRAWFORD INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=346">WHEELOCK AND COMPANY LIMITED</a></li>
				
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