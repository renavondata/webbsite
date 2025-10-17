
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

<script type="text/javascript">document.title="Lane Crawford Document Released";</script>

	<div class="summary">The Scheme Document for the privatisation of Lane Crawford contains details of the investment portfolio and properties, as well as a comparison to Dickson Concepts which we find misleading. Read our summary.</div>

<h2 class="center">Lane Crawford Document Released<br>
<span class="headlinedate">17 June 1999</span></h2>
<p>Following our successful lobbying for an <a href="lcresponse.asp">increased
offer</a> to minority shareholders, Wheelock and Lane Crawford have now posted the Scheme
document for the proposed privatisation. The meetings will be held on 12-Jul-99.</p>

<h3>Investment Portfolio</h3>

<p>Following our prompting, the document reveals for the first time what the
investment portfolio, which represents over a quarter of net assets, comprises. We've
calculated the estimated shareholdings based on the values given at 11-Jun-99:</p>
<table class="numtable" style="font-size:10pt">
  <tr>
    <th></th>
    <th>Value on<br>11-Jun-99<br>$m</th>
    <th>Price<br>11-Jun-99<br>($)</th>
    <th>Est.<br>shares</th>
    <th>Weight<br>11-Jun-99</th>
    <th>Per A-Share<br>($)</th>
  </tr>
  <tr>
    <td>Cheung Kong (Holdings)</td>
    <td>223.6</td>
    <td>64.5</td>
    <td>3,467,000
    </td>
    <td>42.9%</td>
    <td>1.98
    </td>
  </tr>
  <tr>
    <td>Bank of East Asia</td>
    <td>129.5</td>
    <td>18.9</td>
    <td>6,851,800
    </td>
    <td>24.8%</td>
    <td>1.15
    </td>
  </tr>
  <tr>
    <td>Henderson Land</td>
    <td>116.2</td>
    <td>41.2</td>
    <td>2,820,000
    </td>
    <td>22.3%</td>
    <td>1.03
    </td>
  </tr>
  <tr>
    <td>Sun Hung Kai Properties</td>
    <td>52.4</td>
    <td>65.5</td>
    <td>800,000
    </td>
    <td>10.0%</td>
    <td>0.46
    </td>
  </tr>
  <tr class="total">
    <td>Total</td>
    <td><b>521.7</b></td>
    <td></td>
    <td></td>
    <td>100.0%</td>
    <td>4.61
    </td>
  </tr>
</table>
<p>Obviously none of these stocks has much to do with retailing.</p>
<h3>Property</h3>

<p>In our <a href="lane.asp">original article</a>, we estimated that Lane
Crawford House was worth HK$800m. That turned out to be almost spot on. Chesterton Petty
valued it at $780m, while Jones Lang LaSalle valued it at $770m. For some unknown reason,
Jones Lang LaSalle has been introduced as an additional valuer since the announcement on
25-May-99. It valued the total properties at about 3% less than Chesterton Petty.</p>

<p>The document also reveals that the group owns three other properties worth
about HK$136m. There are several godown units at the Grandtech Centre, which was built by
sister company Wharf in 1996, valued by Chesterton Petty at $112m, an apartment at
Guildford Court, Guildford Road, The Peak, valued at $16.7m, and two floors of an
industrial building in Aberdeen valued at $7.5m.</p>

<p>Jones Lang LaSalle valued the Grandtech units at $97m, so the 15% higher
value given by Chesterton Petty reminds us that valuations are more art than science.</p>

<h3>Letter from Jardine Fleming</h3>

<p>The document contains a letter from Jardine Fleming Securities (JF), the
independent financial adviser.</p>

<p>In its letter, JF states that it regards Joyce Boutique and Dickson
Concepts as the &quot;<em>most comparable companies</em>&quot; to Lane Crawford. It then
attempts to show that Dickson Concepts is valued by the market at a <strong>63.2%</strong>
discount to Net Asset Value at 18-May-99.</p>

<p>We regard this as misleading. The small print states that the figure is
based on &quot;<em>the offer price as stated in the document of Dickson Concepts
(International) Limited dated 7th May, 1999 in relation to the conditional partial cash
offer</em>&quot; while the NAV is &quot;<em>the pro forma adjusted net asset value as
stated in the circular</em>&quot; of the same date. Neither figure is disclosed, and most
Lane Crawford shareholders won't know what they are.</p>

<p>So we'll tell you. The partial offer price for Dickson Concepts is $2.00
while the market price as of 11-Jun-99 (the latest practicable date used elsewhere in the
Scheme document) was $4.35, more than double the partial offer price. The pro forma
adjusted net asset value was in fact $5.43. With these two figures, it is clear that
Dickson Concepts is trading at a discount of <strong>19.9%</strong> to net asset value,
not 63.2%.</p>

<p>The JF letter seeks to rely on this misleading figure by saying that the
shares in Joyce Boutique and Dickson Concepts &quot;<em>both <u>closed</u> at larger
discounts to their respective NAVs than are represented by the A Share Cancellation Price
and the B-Share Cancellation Price</em>&quot;. </p>

<p>In the case of Dickson Concepts, this argument is falsified by the figures
we give above. The price has not &quot;closed&quot; at $2.00, but at $4.35. We think Lane
Crawford and JF should clarify this in an announcement. JF states that this is one of the
&quot;<em>key factors in arriving at our recommendation</em>&quot;. They should clarify
whether their recommendation remains the same.</p>

<p>Lane Crawford shareholders may of course consider whether the lower
discount of Dickson Concepts reflects its perceived retail expertise. We don't take the
comparison to Joyce seriously, since this is about one tenth the size of Lane Crawford and
is emerging from a recapitalisation.</p>

<h3>Brand Valuation</h3>

<p>Lane Crawford and JF appear to have made an effort to address our earlier
suggestion that they should take into account the brand value of &quot;Lane
Crawford&quot;, which represents 149 years of retailing in Hong Kong.</p>

<p>However, JF states that &quot;<em>in principle, value may be attributable
to a brand if it contributes to making additional profits for the owner of the brand</em>&quot;.
It then goes on to conclude that &quot;<em>it is difficult to ascribe any significant
value for the name 'Lane Crawford</em>'&quot;.</p>

<p>In their equally down-beat Explanatory Statement, Lane Crawford's
directors state that they have considered the merits of valuing the Lane Crawford name but
conclude that it is not necessary. They say that in their view &quot;<em>only limited
interest in the 'Lane Crawford' brand name will exist even if the underlying retail and
trading business accompany its sale</em>&quot;. How do they know? Will they put a
&quot;for sale&quot; sign on the business? We can think of at least one player who might
be interested....</p>

<p>Webb-site.com is willing to bet that the brand alone is worth something.
Let's start the bidding at a minimum HK$1,000,000 for the exclusive global rights to use
the name &quot;Lane Crawford&quot; forever. Our offer is good for one week.</p>

<h3>Treasury</h3>

<p>We have earlier stated that if the Scheme does not proceed, then we would
urge the directors to liquidate the property and investment portfolio and distribute the
surplus capital to shareholders. The directors state that &quot;<em>this has been raised
in the press as a possible way forward</em>&quot; but that it &quot;<em>is not a realistic
option as it would leave the Group without the more stable income it derives from these
assets</em>&quot;.</p>

<p>That income can hardly be regarded as &quot;stable&quot;. The company
warns that rental income on the office building will fall after a significant number of
leases are renewed or re-negotiated within the next 12 months. In the latest year, income
from listed investments was $14.2m compared with $24.2m the year before, and as of
11-Jun-99 the company is still sitting on a $220m paper loss on the stocks it bought,
apparently near the top of the market in 1997.</p>

<p>You do not get stable income from playing the stock market. We regard the
continual uncertainty over what the company will do next with its liquid assets (including
the share portfolio) as one of the main reasons that the shares have historically traded
at such a big discount to net asset value.</p>

<p>The company already has sufficient resources. It states that total
deposits and cash exceeded borrowings by $279m at 31-Mar-99. So if the Scheme does not
proceed, then we would stand by our recommendation to liquidate the portfolio, sell off
the office block, and pay out the surplus capital.</p>

<h3>Our Position</h3>

<p>In case you are wondering, our position has not changed.</p>

<p>One of the <a href="../pages/aboutus.asp#diff">main objectives</a> of <em>Webb-site.com</em>
is to improve treatment of minority shareholders. We regard the increased offer as a minor
victory. If we vote against the privatisation, then due to the size of our stake, the deal
would not reach the required 90% approval and would not proceed. In this circumstance,
other shareholders would be denied the opportunity to receive the increased offer we have
achieved for them (unless they can achieve this in the market).</p>

<p>Therefor, it remains our current intention to abstain from voting at the
meetings on 12-Jul-99 to consider the Scheme, in order to allow other minority
shareholders the opportunity to receive the increased offer.</p>
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