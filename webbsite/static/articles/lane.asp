
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

<script type="text/javascript">document.title="Sale of the Century at Lane Crawford";</script>

	<div class="summary">Wheelock is proposing to privatise HK-listed Lane Crawford by buying the 25% public shareholding at a substantial discount to its underlying value. We explain that by stripping out the property and blue-chip equity portfolio, Wheelock would essentially be getting the retail business for free. We intend to vote against the proposal unless the offer is raised. As we represent over 10% of the publicly-held B-Shares, the Scheme will not proceed without our support.</div>

<h2 class="center">Sale of the Century at Lane Crawford<br>
<span class="headlinedate">8 June 1999</span></h2>
<p>Hong Kong is enduring its worst retail recession in at least a decade.
Sales have slumped and profits have fallen. Shares in HK-listed Lane Crawford have
plunged. The company is at the upper end of the retail market, and we expect its results,
due out on 9th June, to be pretty poor. Against this backdrop, Wheelock is proposing to
privatise the company by way of a &quot;scheme of arrangement&quot; - effectively buying
the 25% public shareholding at a substantial discount to its underlying value.</p>

<p>In this article we explain that, by stripping out the firm's main
property, Lane Crawford House, and its blue-chip stock portfolio (at its last known
valuation), Wheelock would essentially be paying nothing for the retail business, its net
assets, and the Lane Crawford brand. Things may be bad, but surely shareholders deserve
something for the 149-year-old franchise!</p>

<p>Webb-site.com represents shareholders (including editor David Webb) who currently hold
shares equivalent to more than 10% of the public B-Shares and more than 2.5% of the
outstanding B-Shares in Lane Crawford. We regard the Cancellation Price (the price being
offered for the shares) as wholly inadequate and currently intend to vote against the
Scheme if it is put to shareholders in its current form. As we represent more than 10% of
the public B-Shares, the Scheme will not receive the necessary 90% approval without our
support.</p>

<p>We believe that the Scheme is being proposed at a time when the retail sector in Hong
Kong is in its worst condition in a decade. Wheelock is attempting to capitalise on the
negative sentiment produced by these conditions by privatising Lane Crawford at a
substantial discount.</p>

<p>In the announcement on 25-May-99, the net asset value of the Company at 31-Mar-99 was
estimated to be <strong>$16.4</strong> per A-Share, which is equivalent to $1,854m in
total. The Cancellation Price of <strong>$11.80</strong> per A-Share (or $1.80 per
B-Share, which are one tenth the size of the A-Shares) has been presented as being a 28%
discount to this value. However, we will show that, by removing the property and stock
portfolio from the equation, the discount is nearer 100% - that is, Wheelock would get the
retail business for free.</p>

<h3>Strip the Assets</h3>

<p>As of 31-Mar-98 (the last disclosed value) Lane Crawford's long term investment
portfolio was worth approximately $550m at market prices, or <strong>$4.86</strong> per
A-Share. This represents some 29.6% of the estimated NAV of $16.40 per A-Share at
31-Mar-99.</p>

<p>On page 10 of the latest annual report (31-Mar-98), the portfolio was described as
&quot;<i>primarily</i>&quot; comprising &quot;<i>listed blue chip securities</i>&quot;.
Being blue chips, the portfolio is readily saleable in the market at very close to current
market prices. Should Wheelock succeed in privatising the Company, it would be free to
sell the portfolio without affecting the rest of Lane Crawford's business. In effect, the
portfolio should be regarded separately.</p>

<p>Removing the portfolio from both sides of the equation reduce the effective
Cancellation Price to <strong>$6.94</strong> per A-Share, in return for net assets of
$11.54.</p>

<p>Furthermore, we estimate that the principal property, Lane Crawford House, in Queen's
Road, Central, will be professionally valued at approximately $800m as at 31-Mar-99, or
around HK$4,400 per gross square foot, or <strong>$7.08 </strong>per A-Share. This is a
blend of the prime street-front retail podium and the lower-value office tower on top, and
represents a 25% write-down from the carrying value at 31-Mar-98. This is a property in a
core location with long-term redevelopment potential. We believe that if the property was
placed on the market, even in today's conditions, it would find willing buyers at the
written-down value. That is, after all, the surveyors' definition of market valuation.
Only 7 out of 23 floors are used in the Company's retail business and these could be
leased back from any purchaser.</p>

<p>This means that, by deducting the property at market value of $7.08 per A-Share from
the ex-portfolio Cancellation Price of $6.94 per A-Share, the Parent would get the retail
business, with its 149 year-old franchise and $504m of net assets, for free and have $0.14
per A-Share left over. In dollar terms:</p>
<table class="numtable center">
  <tr>
    <th>&nbsp;</th>
    <th>Offer<br>value<br>HK$m</th>
    <th>Net assets<br>HK$m</th>
    <th>NAV per<br>A-Share </th>
  </tr>
  <tr>
    <td class="left">Offer value for 100% of the Company:</td>
    <td>1,334</td>
    <td>1,854</td>
    <td>$16.40</td>
  </tr>
  <tr>
    <td class="left">Less: value of share portfolio at 31-Mar-98</td>
    <td>(550)</td>
    <td>(550)</td>
    <td>($4.86)</td>
  </tr>
  <tr>
    <td class="left">Less: estimated value of property, 31-Mar-99</td>
    <td>(800)</td>
    <td>(800)</td>
    <td>($7.08)</td>
  </tr>
  <tr>
    <td class="left">Price (RECEIVED) for privatising<br>
    <strong>Net Retail Assets</strong> and brand:</td>
    <td><b>(16)</b></td>
    <td><b>504</b></td>
    <td><b>$4.46</b></td>
  </tr>
</table>

<p>Obviously the same figures apply proportionately to the 25% minority shareholders. We
will hopefully get more accurate information in the results on 9th June, but the total NAV
is unlikely to be much different from the estimate given when the Scheme was announced,
almost two months after the year-end.</p>

<h3>Portfolio value may have materially changed since 31-Mar-99</h3>

<p>The announcement of the Scheme did not disclose what stockholdings Lane Crawford's
share portfolio comprises. </p>

<p>These blue-chip stocks would have changed in value, potentially by a large amount,
between the year-end valuation on 31-Mar-99 and the time when Wheelock made its decision
to announce the Scheme on 25-May-99. The market value is easy to calculate, and as Lane
Crawford' s parent, Wheelock should be aware of this information, together with knowledge
of any dealings since the year-end. It is essential, given the size of the portfolio
relative to Lane Crawford's net assets, that this material information be made known to
public shareholders.</p>

<p>To take examples from the Hang Seng Index, the following upward movements have taken
place since 31-Mar-99 and up to the date of the Scheme announcement (dividends ignored):</p>

<table class="numtable center">
  <tr>
    <th class="left">Name</th>
    <th>Price on<br>31-Mar-99</th>
    <th>Price on<br>25-May-99</th>
    <th>Change</th>
  </tr>
  <tr>
    <td class="left">Wharf</td>
    <td>11.90</td>
    <td>19.90</td>
    <td>+67.2%</td>
  </tr>
  <tr>
    <td class="left">Bank of East Asia</td>
    <td>13.15</td>
    <td>18.20</td>
    <td>+34.8%</td>
  </tr>
  <tr>
    <td class="left">Hongkong Telecom</td>
    <td>15.30</td>
    <td>19.00</td>
    <td>+24.2%</td>
  </tr>
  <tr>
    <td class="left">New World Dev.</td>
    <td>15.25</td>
    <td>18.90</td>
    <td>+23.9%</td>
  </tr>
  <tr>
    <td class="left">Hang Seng Bank</td>
    <td>71.25</td>
    <td>85.50</td>
    <td>+20.0%</td>
  </tr>
</table>

<p>Similarly, downward movements since the year end would also be relevant to
shareholders' decisions in relation to the Scheme. If by some miracle Lane Crawford has
managed to lose more money on its portfolio since the year-end, despite a 17% increase in
the Hang Seng Index, then we should be told.</p>

<p>We regard it as essential that, when the Scheme is put to shareholders in a formal
Scheme Document, it should disclose what the portfolio comprises, and what the valuation
is at the latest practicable date, not more than 3 days prior to posting of the document.</p>

<p>If any portfolio profits or losses have been realised since the year end then these
should be taken into account. It seems impossible for shareholders, and Jardine Fleming,
the Independent Financial Adviser, to be able to reach a view on whether the Scheme if
&quot;fair and reasonable&quot; without knowing what the portfolio is now worth.</p>

<p>It cannot be argued that disclosure of the composition of the portfolio is in any way
commercially sensitive, since it represents only 0.02% of the market value of the top 20
HK-listed &quot;blue chip&quot; stocks at 30-Apr-99. Therefor it would have no impact on
the ability to sell the portfolio. Even a 10% variation in the portfolio value is worth
about <strong>$0.49</strong> per A-Share.</p>

<h3>The Lane Crawford Brand</h3>

<p>The Lane Crawford brand has been established over 149 years in Hong Kong. It is
synonymous with up-market quality and luxury. We believe the brand has potential which has
not been exploited by its present management. However, it carries no value in the balance
sheet and its value is being ignored for the purposes of the NAV and discount calculation
in the Scheme. As the Chinese and Asian economies and e-commerce develop, the ability to
claim &quot;Since 1850&quot; and the luxury status of the brand in promoting the business
will be of great value. What price &quot;Lane-Crawford.com?&quot;. </p>

<p>We note that Lane Crawford is making &quot;<i>major enhancement measures costing $20m</i>&quot;,
of which $14m is being spent on a new Point of Sale system and $6m on Y2K compliance. In
our view, this is money well spent and shareholders will wish it had been spent earlier,
instead of buying equities. The Company has not made an operating profit (before interest
expenses) from retailing and trading since the year ended 31-Mar-94. That's more than just
a recession.</p>

<p>Competitors who have already mastered the benefits of information technology have
overtaken the Company in terms of the benefits of reduced working capital, and reduced
fashion-risk associated with the reduction of inventories and improved market research and
consumer profiling, or put simply, stocking things that people want and not holding too
much of it when fashions change.</p>

<p>We believe it is incumbent upon the Independent Financial Adviser to take into account
a stand-alone non-zero valuation of the Lane Crawford Brand when considering the terms of
the Scheme.</p>

<h3>No alternative offer</h3>

<p>We note the statement in the announcement of the Scheme that &quot;<i>the Directors [of
the Company] believe it is... unlikely that the Minority Shareholders would receive any
other offer... from any other party without the approval from [Wheelock]</i>&quot;.</p>

<p>In a nutshell, they seem to say &quot;we're in control, so take it or leave it&quot;.
We do not regard this as an acceptable justification, in a developed market, for a deeply
discounted offer price. In return, we would highlight to Minority Shareholders that so
long as Lane Crawford is listed, Wheelock <u>cannot</u> sell control of the Company
without a general offer being made to minority shareholders at the same price. If
shareholders stay in now, they will benefit from any subsequent change of control.</p>

<p>Statements such as &quot;no discussions have taken place (or are taking place)&quot; in
relation to a sale of part or all of the business are not meaningful in a future context.
It's a bit like saying &quot;we have no current intention of being hit by a bus&quot; - in
the future, anything may (or may not) happen. Being told that there is no other offer on
the table right now is not a reason to accept an inadequate offer.</p>

<h3>What Wheelock should do</h3>

<p>We believe that minority shareholders of Lane Crawford deserve a better deal. If the
Scheme is put forward at the current price, we intend to vote against it and encourage
others to do likewise. Hong Kong is in the depth of a retail recession. Sure, the company
faces some more losses before the recession is over, but this business has been around for
149 years, surviving numerous recessions and two world wars. It would have to be awfully
badly managed to die now. </p>

<p>If the Scheme does not complete, then we would urge the directors of Lane Crawford to
cease and liquidate its equity investment activities, which have no relevance to the
retail business, and to distribute the excess capital to all shareholders, including
Wheelock. Lane Crawford should focus on retailing, not trying to be a fund manager. The
distribution of the proceeds from the sale of the blue-chips would result in a special
dividend of around $4.86 per A-Share and $0.486 per B-Share (based on the last known
portfolio value), while allowing shareholders to participate in the future of the retail
business and the property.</p>

<p>We are long-term investors and believe that, if the Scheme does not proceed, while
there may be an initial drop in the market price of the shares, the underlying value will
remain solid and improve as the economy recovers. Any future attempt to privatise or sell
the Company in improved economic conditions would most likely be at a higher price. We
have no present intention of selling our shares but reserve the right to do so. </p>

<p>So come on Wheelock, do the decent thing. We know you want to be fair. Set an example
of corporate citizenry that other companies can aspire to, and pay us all a fair price.</p>
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