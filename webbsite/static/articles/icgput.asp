
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

<script type="text/javascript">document.title="ICG Asia's HK Put Option";</script>

	<div class="summary">ICG Asia, HK-listed subsidiary of Nasdaq-listed Internet Capital Group, last week announced a huge loss in its 2000 annual results, including a HK$1.02bn (US$130m) provision against its toys and properties business. <i>Webb-site.com</i> asks whether things are as bad as they look, and we query the implications of a put option over the toys and properties business which if exercised, could give the benefit of a $1bn discount to Hutchison Whampoa.</div>

<h2 class="center">ICG Asia's HK Put Option<br>
<span class="headlinedate">10 April 2001</span></h2>
<p>Last week <a href="http://www.internetcapital.com/global/asia/" target="_blank"> ICG Asia Ltd</a> (<b>ICG Asia</b>), the HK-listed subsidiary of
Nasdaq-listed <a href="http://www.internetcapital.com/" target="_blank">Internet
Capital Group, Inc</a>(ICG), announced its annual results for 2000.</p>
<h3>Background</h3>
<p>ICG Asia was once known as Harbour Ring International Ltd, until being taken
over in a deal <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000310/LTN20000310053.HTM" target="_blank">announced</a>
in March last year. It was then briefly named &quot;ICG Asiaworks Ltd&quot;
until a possible naming confusion with <a href="http://www.iasiaworks.com/" target="_blank">iAsiaWorks</a>
arose. The original business, which the company still owns, was in toy
manufacturing and property development and investment. Yes, this was the company
that brought you Teenage Mutant Ninja Turtles a decade ago!</p>
<p>The ICG takeover was a classic &quot;reverse listing&quot; in which a deal
was done to obtain a listing by injecting sufficient cash to obtain a
controlling shareholding. The deal which introduced ICG as a shareholder was a
hugely dilutive issue of new shares for cash at HK$0.30 each, a 67% discount to
the net asset value per share of $0.90 as of 31-Dec-99, adjusted for a property
valuation a month later.</p>
<p>Alongside ICG came Hutchison Whampoa Ltd (<b>Hutchison</b>) and Li Ka Shing
Foundation Ltd (<b>LKSF</b>), the personal foundation of Mr Li Ka-shing, Hutchison's
Chairman and ultimate controlling shareholder. LKSF is a company limited by
guarantee in Hong Kong, so it has no issued shares.</p>
<p>Hutchison was already a 21.2%
shareholder of Harbour Ring, and its participation in the share issue helped to
reduce the dilutive impact of the subscription by ICG. Three weeks after the
deal was announced, it was slightly <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000330/LTN20000330050.HTM" target="_blank">reworked</a>
to establish a vehicle called Asian Employment Co Ltd (<b>AECL</b>) was set up
to be 78% owned by ICG and 22% by Hutchison, and this in turn held 6.1% of the
enlarged ICG Asia. The plan was to use these shares under options as an incentive
for future employees of the group.</p>
<p>As a result, the ownership looked like this:</p>
  <table class="numtable center">
    <tr>
      <th class="left">Name</th>
      <th>Before<br>the deal<br>%</th>
      <th>After<br>the deal<br>%</th>
    </tr>
    <tr>
      <td class="left">ICG</td>
      <td>&nbsp;</td>
      <td>50.1</td>
    </tr>
    <tr>
      <td class="left">Hutchison</td>
      <td>21.2</td>
      <td>13.7</td>
    </tr>
    <tr>
      <td class="left">LKSF</td>
      <td>&nbsp;</td>
      <td>5.0</td>
    </tr>
    <tr>
      <td class="left">AECL</td>
      <td>&nbsp;</td>
      <td>6.1</td>
    </tr>
    <tr>
      <td class="left">Dr Luk Chung Lam &amp; Associates</td>
      <td>37.4</td>
      <td>11.9</td>
    </tr>
    <tr>
      <td class="left">Playmates Toys</td>
      <td>12.9</td>
      <td>4.1</td>
    </tr>
    <tr>
      <td class="left">Others</td>
      <td>28.5</td>
      <td>9.1</td>
    </tr>
    <tr class="total">
      <td class="left"><b>Total</b></td>
      <td>100.0</td>
      <td>100.0</td>
    </tr>
  </table>
<p>Li Ka-shing was hardly diluted at all, indeed, because
he has only about an 18% economic interest in Hutchison (via 36% of Cheung Kong
(Holdings) Ltd which owns half of Hutchison) his economic interest in ICG Asia,
including LKSF, actually increased from 3.8% to 7.5%. It is interesting to note
that when Mr Li's indirect post-deal voting interest was <a href="http://www.hkex.com.hk/listedco/sdi/20000512i.htm" target="_blank">disclosed</a>
under legal requirements, it did not include the shares issued to LKSF. Either
he has no voting interest in the foundation, or it had already sold the shares.</p>
<p>In the above table, Dr Luk Chung Lam (<b>Dr Luk</b>) was the Chairman
of Harbour Ring. Playmates Toys is another listed company which was also a major
customer. Through Reading Investments Ltd, which Dr Luk controlled, he <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000526/LTN20000526033.doc" target="_blank">sold</a>
110m shares (about 2% of ICG Asia) at $1.20 on 25-May-00, over 4 times the
current price.</p>
<p>The total share subscription in the takeover was more than twice the number
of existing shares in issue, and it diluted net assets per share by <b> 46%</b> to $0.49
per share. Nevertheless, in the dotmania surrounding the internet, the deal won
speculative applause and the shares briefly traded as high as $9.20. Today they
are back to&nbsp; $0.255, down 97%. On top of the share issue, the subscribers
also got 3-year warrants to subscribe yet more shares at $0.39 per share.</p>
<p>But what about those toy and property operations? Now we get to the
interesting bit.</p>
<h3>Toys and Property (T&amp;P)</h3>
<p>Clearly, ICG did not have much interest in the toys and property business -
it is an internet B2B player. At the same time, any listed company which ceases
to carry on any business besides holding cash would automatically be suspended
on the Stock Exchange, so it was important for ICG Asia to carry on the Toy and
Property (<b>T&amp;P Operations</b>) at least until it had something else to do.</p>
<p>At the same time, the existing management (including the Dr Luk and his
associates with 37.4% of the company) were needed to run the T&amp;P Operations.</p>
<p>A BVI holding company called Shamrock Green Ltd (<b>Shamrock</b>) was then
established and 50% held by Hutchison, while 25% was held by each of two companies
controlled by Dr Luk. This company granted a put option to ICG Asia in respect
of all the Toy Operation and the Property Operation (<b>T&amp;P</b>) (in other
words, everything except the cash reserves of Harbour Ring). The put option
gives ICG Asia the right, but not the obligation, to sell the T&amp;P Operations
to Shamrock at a certain price (the <b>Put Price</b>) at any time up to two
years after the deal completed on 4-May-00.</p>
<p>If the put option is exercised then Hutchison has a 14-day right to buy the other
half of Shamrock at half of the Put Price, giving it the 100% of Shamrock and
all the benefit of the deal.</p>
<p>So what is the Put Price? Watch carefully and you will see the magic. The
deal was struck as follows. Before the subscriptions, but allowing for the
existing employee share options, there would be 1,751,377,402 shares in issue.
Multiply that by 30 cents, and then deduct $300m for the estimated net cash held
by ICG Asia just before the deal closes. That leaves you with exactly <b>$225,413,220</b>.
That's the Put Price.</p>
<p>You will notice that the net asset value before the deal was 90 cents per
share, not 30 cents. In fact, audited net assets at 31-Dec-99 were $1,579m.
Outstanding share options at that date had a subscription price of about $15m.
In the shareholders' circular regarding the deal, ICG Asia's <a href="http://www.harbourring.com.hk/" target="_blank">property
portfolio</a> was valued by FPDSavills (Hong Kong) Ltd at 31-Jan-00 at about
$822m, implying a small deficit of $18m compared to book value.</p>
<p>This adds up to adjusted net assets of about $1,576m at 31-Dec-99. Deduct the
estimate of $300m of cash, and you have net assets under the put option of about
<b>$1,276m</b>. As an aside, the circular to shareholders on the deal said that:</p>
<blockquote>
<p>&quot;The combined net asset value of the [T&amp;P] Operations extracted from
the working schedules in the preparation of audited financial statements&nbsp;
of the Group for the year ended 31st December 1999 was approximately
HK$712.3m&quot;</p>
</blockquote>
<p>but that is far less than the provision the company later made against the
business, so we will assume the circular was wrong.</p>
<p>Compare our estimate of net assets under the put option with the Put Price, and you have a net asset discount of
around <b>$1,051m</b> (US$135m, or <b>82%</b>) excluding any goodwill value in
the Toy Operations.</p>
<p>The independent financial adviser, Anglo Chinese Corporate Finance Ltd,
wrote:</p>
<blockquote>
<p>&quot;The option price was not determined by an evaluation of the probable
value of the Toy and Property Operations.</p>
<p>In our opinion, the option price should not be taken as the likely value at
which the Toy and Property Operations are likely to be sold, if they are to be
sold at all. Based on our assessment, the present value of the Toy and Property
Operations is greater than the option price.&quot;</p>
</blockquote>
<p><b>We totally agree. Any half-baked sale process ought to achieve a better
price than 18% of net asset value.</b></p>
<h3>Write-down</h3>
<p>Despite the huge disparity, ICG Asia included in its interim and final 2000 results a provision against the carrying value of the T&amp;P Operations. They
wrote:</p>
<blockquote>
<p>&quot;the Company has determined...to hold the [T&amp;P Operations] for
disposition.... In view of this determination and the lack of effective control
and substantial long term restrictions on management, the Company has not
included the T&amp;P Operations in its consolidated results of operations after
4th May 2000. Accordingly the Company has made a <b>provision of
HK$1,018,148,000 to reflect the value of the [T&amp;P Operations]</b>.&quot;
(emphasis added)</p>
</blockquote>
<p>In plain English, that translates to &quot;we are putting it up for sale, and
writing off the difference between book value and what we think it can be sold
for&quot;. We spoke with ICG Asia's CFO, <a href="http://www.internetcapital.com/global/asia/team/mgmt/chu.asp" target="_blank"> Ms Rowena
Chu</a>, who confirmed that the
provision was based on the Put Price. Presumably the difference between our
estimate of $1,051m and the actual provision of $1,018m is accounted for by
normal trading up to 4-May-00.</p>
<p><b>Given the huge discount that the Put Price represents, <i>Webb-site.com</i> finds it very
unlikely that it would be in public shareholders' interests to exercise the Put.
</b>Hutchison would stand to receive the $1bn discount if the Put were
exercised.</p>
<p>The worrying thing about this is that by making the write-down of the
carrying value to the Put Price, ICG Asia is now in a position to exercise the
Put without recording any loss or profit. Is this <b>$225m</b> figure really the board's best
estimate of net realisable value of the T&amp;P Operations, when the properties
alone were valued only last year at <b>$822m</b>? <i>Webb-site.com </i>suggests
that the provision was excessive and does not &quot;reflect the value of the
T&amp;P Operations&quot; as the company suggests.</p>
<p>In a vague and worrying reference, the resolution which sought shareholders
approval of the ICG takeover said (in part) that approval was sought for</p>
<blockquote>
<p>&quot;the consummation of the transactions contemplated by the Option
Deed&quot;</p>
</blockquote>
<p>Setting aside the fact that a piece of paper has no brain and cannot contemplate anything, it
is surely wrong that this should be taken as approval of any exercise of the Put
Option up to two years after its grant, when no decision had yet been made to
exercise it. No transaction was &quot;contemplated&quot; by granting the option
- only the <u>right</u> to transact as a last resort, underpinning the value of
the T&amp;P Operations. Indeed, rule 14.26(1) of the Listing Rules includes in
&quot;connected transactions&quot; requiring independent shareholders' approval:</p>
<blockquote>
<p>&quot;the exercise by the issuer...of any option granted to it to acquire or
realise assets, from or to a connected person&quot;.</p>
</blockquote>
<p>There is no way that shareholders should be deemed to have approved a decision
which the board has not yet made and which, if made at the time of the deal
would have been so manifestly against their interests. So if and when the board
decides to exercise the Put,&nbsp; then the transaction should be subject to
independent shareholders' approval. At the time of the ICG takeover, ICG and Hutchison
were deemed to be acting in concert with respect to the Takeover Code. <b>To avoid any suggestion that ICG might be
repaying favours to Hutchison for facilitating the original deal, ICG should be
required to abstain from voting its 50.1% stake on any exercise of the Put.</b></p>
<h3>Management Services Agreement</h3>
<p>Remember that reference to &quot;substantial long term restrictions on
management&quot; of the T&amp;P Operations in the results?</p>
<p>In conjunction with the ICG takeover, there was a Management Services
Agreement which gives the previous management of the T&amp;P the <i>&quot;exclusive
right to manage and operate the [T&amp;P] Operations&quot;. </i>This was based
on existing employment contracts and will be terminated by ICG Asia on the
exercise or lapse of the Put Option. If the option lapses (on 4-May-2002) then
after that, ICG Asia would regain full control of the T&amp;P Operations and be
able to decide which parts to sell and which parts to keep. Unless something has
gone alarmingly wrong with the T&amp;P Operations, this must be the best route.</p>
<h3>An note on ICG</h3>
<p>Shareholders should keep a close eye on ICG Asia to see just what value they
achieve from the eventual disposal of the Toy and Property Operations. Not only
that, but our US readers and shareholders of ICG itself should also be watching
closely. Such is the fate of the parent (NASDAQ: ICGE), that its market cap has
fallen over 99% to just US$432m at the time of writing. Therefore the discount
in the Put Option of US$135m is now worth almost one third of this amount!</p>
<p>ICG Asia has not done very much with the $1,116m it raised from the
subscriptions. By the end of 2000, it was sitting on net cash and equivalents of
$1,306m (US$168m), or about HK$0.24 per share, so the 50.1% attributable to ICG is
about US$84m, or 19% of ICG's market value.</p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1806">China Oceanwide Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366">Hutchison Whampoa Limited</a></li>
				
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