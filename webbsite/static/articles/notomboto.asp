
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

<script type="text/javascript">document.title="Say No to Boto's MBO";</script>

	<div class="summary">Boto, the World's leading artificial Christmas tree maker, has been growing a perfect seasonal balance in leisure furniture. Now just as that is soaring, along comes the Chairman with a management buy-out offer backed by Carlyle Group, at an estimated 5.6x Mar-02 earnings, leaving shareowners with a shrunken shell and a start-up graphics animator. The deal requires minority shareholders' approval. We regard the offer as derisory and urge investors to vote against the deal, as we and a number of institutions intend to do.</div>

<h2 class="center">Say No to Boto's MBO<br>
<span class="headlinedate">4 April 2002</span></h2>
<p><a href="http://www.boto.com.hk/" target="_blank">Boto
International Holdings Ltd</a> (Boto) yesterday <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020403/LTN20020403015.doc" target="_blank">announced</a>
a proposed sale of almost all of its business to a private management buy-out (<b>MBO</b>)
vehicle owned 70% by funds of US private equity giant <a href="http://www.thecarlylegroup.com/" target="_blank">Carlyle
Group</a> (<b>Carlyle</b>) and 30% by Michael Kao Cheung Chong (<b>Michael Kao</b>),
the Chairman and co-founder of Boto. We believe the deal represents a back-door
privatisation which dramatically undervalues the business. </p>

<p>The deal is subject to the approval of minority shareholders.
David Webb, Editor of <i>Webb-site.com</i>, is a Boto shareowner and intends to
vote against this deal. We urge fellow shareholders to do likewise. A number of
institutions who have previously recognised the value and future growth potential in Boto's core
business have already contacted us and indicated that they will also vote against the
deal. We urge management to reconsider. </p>

<h3>The proposed deal</h3>

<p>Under the proposed deal, Boto will receive cash proceeds as
follows: </p>

<table class="optable center fcl">
	<tr>
		<th></th>
		<th>HK$m</th>
	</tr>
	<tr>
		<td>For the business and assets</td>
		<td>994.0</td>
	</tr>
	<tr>
		<td>For sale of related property</td>
		<td>13.5</td>
	</tr>
	<tr>
		<td>Pre-sale dividend from the business sold</td>
		<td>92.5</td>
	</tr>
	<tr class="total">
		<td>Grand total pre-expenses</td>
		<td><b>1,100.0</b></td>
	</tr>
</table>
<p>It is probably not a coincidence that the total is a round
number multiple of HK$100m. The latest available figure for shares in issue is
3,438,425,000, so this translates to $0.3199 per share. The market price of Boto
shares prior to announcement of the deal was $0.34. A two cent discount to the
minority share price, for a privatisation? No way! </p>

<h3>Dramatic undervaluation</h3>

<p>Brokerage Kim Eng forecasted on 24-Jan-02 (after Kmart went into
Chapter 11)&nbsp; that net profit of Boto for the year ended 31-Mar-02 would be <b>$179.6m
</b>and we wouldn't disagree.
The ex-dividend price for the business of $994m, plus the price of property at
$13.5m, totals $1,007.5m. Assume $1,000m net of expenses. Then the sale p/e is
just <b>5.57x</b>. That's a ridiculously low price for the outright sale of what
claims to be the world's leading artificial Christmas tree maker, with a
furniture business that has been growing at as much as 100% in the last year
(see below). </p>

<p>If Carlyle and Michael Kao really want to privatise Boto, then
they should make a general offer for all the outstanding shares at a full price.
Then we'll consider it. </p>

<h3>What would be left in the listed shell?</h3>

<p>The last audited accounts of Boto were for the year to
31-Mar-01. They showed shareholders' funds, after the final dividend, of
$749.4m. The announcement states that the net assets being disposed of were held
at 31-Mar-01 at $632.8m. In addition, the sale of the related property will
incur a book loss of $42.4m, which implies a holding value of $55.9m, which is
what the accounts show at 31-Mar-01 in respect of Hong Kong property. </p>

<p>It is puzzling how the property could have been held in the
books at such a large 314% premium to what is now (according to independent
valuer FPD Savills at 20-Feb-02) fair value, but there we go. Apparently the
value has dropped&nbsp; 76% in less than a year. So we have: </p>

<table class="optable center fcl">
	<tr>
		<th></th>
		<th>HK$m</th>
	</tr>
	<tr>
		<td>Shareholders' funds, 31-Mar-01</td>
		<td>749.4</td>
	</tr>
	<tr>
		<td>Less: business and assets sale</td>
		<td>(632.8)</td>
	</tr>
	<tr>
		<td>Less: property sale</td>
		<td>(55.9)</td>
	</tr>
	<tr class="total">
		<td>Residual net assets, 31-Mar-01</td>
		<td><b>60.7</b></td>
	</tr>
</table>
<p>Now for the 6 months to 30-Sep-01, Boto earned $160.7m and paid
out dividends of $23.8m, leaving retained earnings of $136.9m. We estimate they
made another $20m in the second half of the year, taking the total retained
earnings for the year to about $157m. </p>

<p>It is not clear how much of the retained earnings since
31-Mar-01 are within the business being sold, and how much are already held at
the listed company parent-level. So it is not possible to figure out what the
remaining net assets will be. However, in the worst case, the retained earnings
are all inside the companies being sold. In the best case, there are already
some retained earnings at the parent level which we haven't counted . </p>

<p>The agreement contains various warranties against which Boto is
required to retain not less than $200m of net assets for 15
months after completion, so it may need to retain around $140m of cash from the
MBO, in addition to its residual net assets. Let's assume $10m of transaction
costs, then it would have distributable proceeds from the MBO of <b>$950m, or a
dividend of $0.276 per share</b>. If any of the 2002 retained earnings are
already outside of the companies being sold, then the figure may be higher. </p>

<p>Boto has stated that it intends to <i>&quot;distribute a
substantial part of such proceeds to the Shareholders as a special cash dividend
after Completion&quot;</i>. As we've said, we and a number of institutions
intend to vote against this deal, because we think the price is far too low and
would rather remain invested, but if we lose the vote, then we demand that the
fullest cash distribution be made, leaving no more than $200m of net
assets in the shell. This figure should be announced on or before the dispatch
of the shareholders' circular regarding the deal. </p>

<h3>Who owns Boto?</h3>

<p>The current share ownership of Boto, based on disclosures filed
with the Stock Exchange, is as follows: </p>

<img class="center" alt="" src="../images/unfurn3.gif">

<p>Sunni International Ltd (<b>Sunni</b>) is a private company owned as to 51% by Michael Kao.
According to Boto's Group Corporate Development Director Terry Tse Chi Man (<b>Mr
Tse</b>), the other 49% is owned by four parties related to the families of
Boto's pre-IPO co-founders. As their interests have never been formally
disclosed, we infer that none of them holds one third or more of Sunni (the
legal trigger for disclosure). </p>

<p>As a result of his stake in Sunni, Michael Kao has a total
economic interest of <b>30.95%</b> in Boto. Under the proposed deal, he will own
<b>30%</b>, so his
interest in Boto is barely changed.<b> If he is not selling, then why should
you?</b> The other co-founders, several of whom are near retirement age or no longer
involved in the business, may want to divest, but we don't. Fortunately, as
Michael Kao controls Sunni, it cannot vote in the meeting. If the co-founders
want to sell their shares, then Sunni should be dissolved, and they should
receive their stake and place it into the market. That way everyone else can
continue to own shares in a promising public company. </p>

<h3>Interested parties?</h3>
<p>We should be told whether or not any of the existing directors will go with
the business and be employed by the privatised group, in which case, they should
be presumed to be acting in concert with their Chairman, have a material
interest in the deal and should be prohibited from voting their shares on the
transaction at the independent shareholders' meeting to approve the MBO.</p>
<p>The announcement states that Ms Liliana Tsen Yun Lei (<b>Ms Tsen</b>) and Mr
Kui Yiu Ngok (<b>Mr Kui</b>) will resign their directorships of the listed shell
upon completion of the MBO, while the Deputy Managing Director, Mr Philip Lam
Pak Kin (<b>Mr Lam</b>), will remain only as a non-executive director.</p>
<p>Ms Tsen is in charge of quality assurance and human resources of the group,
while Mr Kui is the PRC Managing Director responsible for production and overall
management of the factory complex. Ms Tsen, Mr Kui and Mr Lam respectively own
5.54%, 2.12% and 0.20% of Boto, totalling 7.86%.</p>

<h3>How does Boto justify the proposal?</h3>

<p>Boto provides the following words: </p>

<blockquote>

<p><span lang="EN-US" style="font-size: 12.0pt; mso-bidi-font-size: 10.0pt; mso-fareast-font-family: PMingLiU; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US; mso-fareast-language: ZH-TW; mso-bidi-language: AR-SA">&quot;The
Directors consider the Company's markets, in particular for Christmas festive
products in the U.S., and <b>the Company's principal products are reaching a</b>
<b>relatively mature stage with low growth prospects</b> as compared to the high
growth potential of the 3-Dimensional computer graphics animation business. The
Directors consider that the Disposal represents a good opportunity for the
Company to realise its investments in the Christmas festive products and leisure
furniture businesses.&quot; (emphasis added)</span> </p>

</blockquote>
<p>We do not believe this. While it is true that Boto has for many
years had a strong market share in festive products, the market itself has been
growing, so the dollar value of that share is going up. That's a function of
growth in the number of households as well as the trend away from cutting down
trees in favour of increasingly realistic artificial ones. At the same time,
Boto has been trading an increasing amount of other products (such as Christmas
tree decorations) through the same channels.</p>
<p>The festive products business provides the &quot;cash cow&quot;
earnings generator, while the off-season spare production capacity allows for
the rapid growth of the outdoor furniture business, as we will show below.
That's what Carlyle would see in the business, and that's what we see in it too.
So let's take a closer look at Boto's attempts to justify the MBO.&nbsp;</p>

<h3>Festive Products</h3>

<p>The announcement paints as much doom and gloom as it can about
the <a href="http://www.boto.com.hk/product2.htm" target="_blank">festive
products</a> business. A reader might be forgiven for thinking that
Christmas was going to be cancelled forever. This contrasts sharply with the bullish
interim report dated 28-Nov-01 (nearly 3 months after the 11-Sep attacks), in which
the company wrote: </p>

<blockquote>
  <p>&quot;The 11th September 2001 terrorist attacks had not resulted in cancellation
  of orders for Christmas merchandise but, on the contrary, catalyzed consumers to look towards the holidays as a means of escape from the
emotional aftermath of the tragedy. This has, in turn, helped propel demand for
the Group's festive products.&quot;</p>
</blockquote>
<p>Boto reported festive products sales of $780.6m for the six
months to 30-Sep-01, <b> up 19.7% </b> on the previous year, and at 30-Sep-01 it had orders
in hand of $58m. They wrote: </p>

<blockquote>
  <p>&quot;The Board...<b>expects sales growth for Christmas tree to be
  maintained</b>. Moreover, it is believed that the availability of a large
  selection of high quality artificial Christmas trees will <b>place the Group
  in a strong position to capture added growth</b> as consumers continue to
  follow an environmentally conscious mentality which avoids the use of live
  trees. As well, the need for replacement of obsolete trees will also help to <b>fuel
  added growth</b>.&quot; (emphasis added)</p>
</blockquote>
<p>Although this is obviously a seasonal business, the
manufacturing and sales do not vanish after September. In a typical year, beyond
the orders in hand at 30-Sep-01, they also get some early orders for festive
products for the following season. On 28-Nov-01 they wrote: </p>

<blockquote>
  <p>&quot;It is expected that there will be further Christmas festive products
  sales orders to be received for the year ending 31st March, 2002 in respect of
  the 2002 season.&quot;</p>
</blockquote>
<p>To take 2001 as an example, the sales of festive products were
as follows: </p>

<img class="center" alt="" src="../images/unfurn1.gif">

<p>As you see, over 20% of festive product sales occurred in the second half.</p>
<h3>Leisure furniture</h3>
<p>Now for the really exciting part of the business. Take a look at the sales of
<a href="http://www.boto.com.hk/product2.htm" target="_blank">leisure furniture</a> for the last 3.5 years:</p>
<img class="center" alt="" src="../images/unfurn2.gif">
<p>The interim report stated that&nbsp; as of 30-Sep-01, they had received
orders for HK$157m of outdoor furniture. The previous year, the disclosure was
made based on the date of reporting, 15-Nov-00, which is six weeks further into
the half-year, when orders in hand were $65m. They eventually sold $61m for the
second half of 2001. So it is fair to assume that nearly all the orders held at
30-Sep-01 will be completed by 31-Mar-02 and on their way to the northern
hemisphere for summer. That means that furniture sales for the year to 31-Mar-02
grew by around <b>100%</b>. Not exactly what you call a <i>&quot;mature stage
with low growth prospects&quot; </i>is it? How can the directors possibly hold
this view?</p>
<p>We believe Boto will continue to rapidly grow its furniture business, and fulfil
the goal stated in the annual report for 31-Mar-01, when they wrote:</p>
<blockquote>
  <p>&quot;This is a favourable trend that benefits the Group's long-term
  development and is in line with its ultimate goal of achieving balanced
  revenue sources from both festive products and leisure furniture&quot;</p>
</blockquote>
<p>In other words, they expect that eventually furniture will be as big as
Christmas trees in their sales.</p>
<h3>K-Mart impact small and short-term</h3>
<p>Now the only major event since 28-Nov-01 has been that the group's biggest
retail customer, <a href="http://www.kmartcorp.com/" target="_blank">Kmart</a>,
has <a href="http://www.kmartcorp.com/corp/story/pressrelease/news/pr020122.stm" target="_blank">filed</a>
for Chapter 11 bankruptcy protection. That means that it is currently trying to
restructure itself, <a href="http://www.kmartcorp.com/corp/story/pressrelease/news/pr020308a.stm" target="_blank">will
close</a> 284 of its 2100 stores, and may end up being broken up. However, they
are still trading, because that is what Chapter 11 protection is all about,
providing time to reorganise. More importantly for Boto, the ultimate customers
are not retailers but the consumers of US and Europe, and the consumer demand
(unless the consumer works for K-Mart) is not itself impacted by the troubles of
one retailer. So although Boto may see reduced orders from K-Mart, it should
gain back at least some of these sales through other channels.</p>
<p>Accounts show that for the 6 months ended 30-Sep-01, the largest customer
accounted for 44.5% of sales. For the year to 31-Mar-01, the largest customer
accounted for 25.9% of sales, and 25.7% in the previous year. Let's assume that
was K-Mart.</p>
<p>Boto's Mr Tse was quoted in today's <i>SCMP </i>as saying that orders from
K-mart had dropped as much as 20%. Based on the above figures, that would equate
to between 5% and 9% of&nbsp; Boto's annual sales. But speaking to the <i>HK-iMail</i>,
Mr Tse said that competing retailer Wal-Mart has increased its order, so already
we can see some offset to cushion the fall from Kmart. In the long run, we don't
expect demand for Boto's products to be materially affected by its choice of
retailers. Christmas will still come every year.</p>
<h3>Oil price</h3>
<p>Short-term increases in the price of oil, which affects plastic materials
prices, do have some effect on margins, but at least part of this can be passed
on the consumers through product prices, and Boto plans ahead to protect its
margins. The company's track record demonstrates a low impact of oil price on
gross margins. In the interim report it said:</p>
<blockquote>
  <p>&quot;The Board is cautious that the continuous fall in energy prices may
  not last for a long period of time. However, the Group will be able to
  minimize the impact of short-term fluctuations on its profit margin by making
  necessary purchases in advance.&quot;</p>
</blockquote>
<p>That's just standard good business planning, buying materials against
expected orders.</p>
<h3>Inside information</h3>
<p>As is normal in any management buy-out (MBO) funding, the purchaser was given
privileged inside information such as management accounts and projections to
assist in their analysis of the possible investment. Mr Tse told <i>Webb-site.com
</i>that in this case, Carlyle has received management accounts up to 31-Dec-01
and &quot;3 to 5 year projections&quot;.</p>
<p>In practice, management should already have a good idea how much they made
for the year to 31-Mar-02, as well as the order book for the coming year, and of
course, they know about their own long-term plans for factory expansion and
capital expenditure.</p>
<p><i>Webb-site.com</i> has learned that the &quot;independent financial
adviser&quot; will be Anglo-Chinese Corporate Finance Ltd. In order for the
adviser and the independent non-executive directors to do their
job, it will be essential for them to be given the same information, management
accounts and projections which were provided to Carlyle Group, and investors
should be given a summary of this information (with all the usual disclaimers)
in the shareholders' circular, so that they can see for themselves just what the
projected future earnings are. How else can they make an informed decision on
the MBO? Reference to historic earnings is not sufficient.</p>
<p>One thing we find surprising is that, even before the independent financial
adviser had been appointed, the announcement states that <i>&quot;the
independent non-executive directors consider that the Consideration is fair and
reasonable to the company&quot;</i>. Perhaps they will change their minds once
they have had the benefit of further information and advice.</p>
<h3>Imagi</h3>

<p>Boto has tried its best to present this deal as a venture into
the high-tech world of computer animation. However, Mr Tse has told us that the
total investment in <a href="http://www.imagi.com.hk/" target="_blank">Imagi</a>
to date is just HK$30m. Imagi has developed a cartoon series called <a href="http://www.zentrix.tv/" target="_blank">Zentrix</a>,
and the first five episodes were delivered to the first distributor just a few
days ago. In other words, it has no sales track record. Imagi may or may not
becoming the next <a href="http://www.pixar.com/" target="_blank">Pixar</a>, a far bigger and
leading animation house, but at this stage Imagi is unproven and we can't get
excited about it. We have yet to meet anyone who invested in Boto because of it.
Imagi is a small start-up business that would be better off being privately
developed outside the listed group. It would not qualify for listing on the main
board if it applied as a new applicant today. </p>

<p>Boto needs to retain sufficient business activities to justify
retention of its Stock Exchange Listing, and Imagi is all that would be left
after the MBO. Francis Kao Wai Ho, the 25-year old son of Michael Kao, was
appointed to the board of Boto on 8-Feb-02 and will remain at the listed company
(to be renamed Imagi International Holdings Limited) if the deal proceeds. The
annual report says he &quot;spearheads&quot; the Group's internet related
business. </p>

<p>The style in which this deal is presented reminds us very much
of the way HK-listed CDL Hotels morphed into <a href="../dbpub/articles.asp?p=702" target="_blank">City
e-Solutions</a> in 2000 by selling its controlling stake in Millennium &amp;
Copthorne Hotels to its parent City Developments Ltd, at a substantial discount
to underlying net asset value, and then distributed some of the proceeds. As a
result, the company is now a shadow of its former self and still sitting on a
dwindling pile of cash. </p>

<h3>How to Stop this Deal</h3>

<p> If you own Boto shares, and have not yet contacted us, then please
<a href="../contact/default.asp">e-mail</a>
us with your support, and prepare to ensure that you vote against this deal, to preserve your
ownership stake in the business. Your identities and shareholdings will not
be revealed without your consent, and we will aggregate the information to
demonstrate the strength of opposition to this transaction. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
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