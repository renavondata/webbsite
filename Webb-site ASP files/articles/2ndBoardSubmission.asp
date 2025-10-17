
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

<script type="text/javascript">document.title="Response to consultation paper on a Proposed New Market for Emerging Companies";</script>

	<div class="summary">David Webb's submission to The Stock Exchange of Hong Kong on what later became GEM.</div>

<h2 class="center">Response to consultation paper on a Proposed New Market for Emerging Companies<br>
<span class="headlinedate">20 July 1998</span></h2>

<p style="text-align:justify">This paper constitutes my submission in relation to the 
<a href="http://www.hkgem.com/research/listingmatters/e_consultation.pdf" target="_blank">Consultation
Paper</a> dated May 1998 (&quot;CP&quot;). To aid the assimilation of comments, I will try to follow the
enumeration of the questions set out in paragraph CP(20).</p>

<ol> 
  <li><b>Is there a need for a Second Market?</b>
  <p>Yes, but whether we can satisfy this need depends on the framework of
  the Second Market. If we fail to set the correct framework then the need for such a market
  will not be satisfied.</p>
  <p>It is certainly the case that HK lacks a transparent forum for the
  issuance and trading of equity in venture capital and start-up companies. Other
  territories have found a demand for such markets and I do not believe HK to be so
  different as to lack such a need. However, the profile of such companies will differ
  greatly from, say, NASDAQ, as HK does not have a major presence in the software, hardware
  or biotechnology markets. By contrast, we may see listings of &quot;theme&quot; restaurant
  chains or shops, which would help capitalise our tourism-related industry.</p></li>
  <li><b>Should the market target only sophisticated investors?</b>
  <p>This question has its roots in the fact that when people lose money
  they often seek to blame authorities. This is natural, but we cannot close the markets to
  prevent this. Complaints are a sign of a healthy market economy and an open society. If
  companies never went bankrupt then the economy would be dysfunctional.</p>
  <p>In the equity markets, we must be careful to discriminate between
  complaints which arise from fraud, malfeasance, or loopholes in regulations, and those
  which arise from simply failed investments. For example, C.A. Pacific's clients'
  losses have nothing to do with risky investments, but with questions of regulation and
  supervision of money lending and the terms on which client assets can be
  &quot;borrowed&quot; by brokers and used as collateral for their own financing. We should
  not allow situations like C.A. Pacific to cloud our vision on the classes of permissible
  investments.</p>
  <p>I think the framework of the market should be such that investors are
  made clearly aware of the risks of investing in such stocks, but not prevented from doing
  so. The CP(5.1) attempts to define sophisticated investors as &quot;professional and
  knowledgeable retail investors&quot;. What is a &quot;knowledgeable retail investor&quot;?
  Is this one who is rich? Or a graduate with an MBA? Or someone who reads the Asian Wall
  Street Journal? Of course, we should aim to make all investors more knowledgeable, but we
  should not seek to &quot;target&quot; investors by means of financial entry barriers, or
  identify who is sophisticated and who is not.</p>
  <p>It must be recognised that the Main Board already has an open market in
  securities which as a class are more risky than equities on the Second Market, namely
  derivative warrants and company warrants. These are highly geared instruments and
  investors may lose their entire investments (most expiring warrants this year are
  worthless). We do not seek to prevent investors from assuming this risk. If we are going
  to permit the general public to invest in warrants, or highly geared companies, then they
  should be allowed to assume the lower risks of the Second Market. However, one of the key
  principles of modern portfolio theory is that investors should diversify their risk for a
  given expected return. To set a large minimum transaction size would make this difficult
  for all but the rich (see later).</p>
  <p>If the Exchange decides to pursue the &quot;sophisticated
  investor&quot; route then I urge that this be done by more conventional means. I am not
  aware of any other jurisdiction which approaches the problem with the &quot;brute
  force&quot; approach of prohibitive investment size. The more normal approach is proposed
  in CP(9) and I support this as perfectly workable. Risk warnings can be repeated on
  contract notes, as on the second board in other jurisdictions.</p>
  <p>An alternative would be to require (i) investors to pass an exam;
  and/or (ii) investors to sign a declaration that they have net worth greater than a
  certain figure. The first is costly to implement, while the second is very difficult to
  verify. </p></li>
  
  <li><b>Is raising the minimum transaction size an effective barrier for entry for uninformed
    and rumour-driven investors?</b>
  <p>Not entirely. To answer &quot;yes&quot; would be to presume that the
  poor have a monopoly on stupidity. It would certainly prohibit the poorer ones, but those
  that could afford just one board lot (at $250,000) would be placing 100% of their
  portfolio in one company. If the ignorant are going to invest, then I would rather they
  invested $25,000 in each of 10 companies. This is much more diversified and the chance of
  losing the entire investment is close to zero.</p>
  <p>CP(6) seeks to justify the minimum transaction size proposal by
  reference to the &quot;circumstances prevailing in Hong Kong&quot; and that
  &quot;comparison...with any of the second market models in other jurisdictions is not
  thought to be meaningful&quot;. What makes us so special? We do not have a monopoly on
  speculative behaviour - this is basic human nature. Markets around the region and the
  world have similar characteristics in this regard. A comparison with these presumably
  shows that the large board lot scheme is unconventional.</p>
  <p>We should also bear in mind that large transaction size does not appear
  to be a deterrent in other forms of speculative behaviour, such as property investment. In
  repeated cycles, people have been quite happy to risk the deposit on a pre-sale flat, or
  even purchase the right to buy one, knowing they may lose their entire investment. If
  these types of investors hear a &quot;sure-fire tip&quot; on a Second Market stock, they
  would still find a way to buy one board lot, and may even syndicate the purchase among
  their friends and relatives, increasing the number of persons at risk.</p></li>
  
  <li><b>What should be the minimum transaction size ($100-150K, $150-200K, $200-250K
    or an amount above $250K)?</b>
  <p>None of the above. The question unfortunately pre-supposes that a large
  minimum transaction size (&quot;MTS&quot;) is the way to go. It also suggests that board
  lots are necessary, an issue which I deal with later. My answer on the MTS depends in part
  on the trading system.</p>
  <p>If a stock market uses a &quot;firm&quot; trading system (where the buy
  or sell order is displayed and is binding if &quot;hit&quot;) then of course it needs to
  set a MTS, to avoid people moving the nominal price with a bid or offer for 1 share, or
  hitting a bid or offer with just 1 share, which causes minimum brokerage charges which can
  be larger than the value of the share traded. The Main Board suffers from the current
  2,000 share board lot used by most new issuers, because if a buyer who is bidding for
  $10,000 of stock (at say $0.50 per share) gets &quot;hit&quot; with a single sale of 2,000
  shares worth $1,000, then his minimum brokerage charge (typically $100) will amount to 10%
  of the cost, not 1%. This happens more often in small-caps where the market is less
  liquid. The small MTS is also used to manipulate closing prices.</p>
  <p>So if the trading system is &quot;firm&quot; I think the minimum
  transaction size displayed should be around <u>$10,000</u>, something which does not
  produce excessive brokerage charges as a percentage of the investment. Transactions above
  this size should be in any number of whole shares.</p>
  <p>However, the CP(17) proposes an &quot;indicative&quot; trading system
  where indications of interest are posted on a bulletin board. In this case, all bargains
  are by negotiation, and there is no need to specify a MTS. Brokers simply effect best
  execution for their clients. If a client only wants 850 shares, he can post this interest.
  If he has an odd number of shares due to a history of rights issues or bonus issues, he
  can offer this number of shares. There is no need for separate screens for &quot;whole
  lots&quot; and &quot;odd lots&quot;. This logic also applies to the Main Board, although
  it does need a MTS because it is a &quot;firm&quot; system. Once investors get comfortable
  with this concept, they will have no difficulty with it.</p>
  <p>If the Exchange goes for a $250K minimum transaction size (and a board
  lot of this value), then consider these problems:</p>
  <ol>
	  <li>If the minimum free float is $30m, then there may only be 120
	  board lots in the float. As some larger or institutional investors will buy several lots,
	  a company may only have about 50 shareholders at any time, or barely the minimum number
	  proposed by the Exchange.</li>
	  <li>Each holder of one lot cannot just sell part of his holding if it
	  goes up, he has to sell the whole lot. He may hold on longer rather than do this,
	  increasing his exposure.</li>
	  <li>A potential investor who wants to take a position in the stock,
	  but is uncertain of the fair price or market outlook, would have to buy a whole lot,
	  rather than employ a more prudent and gradual approach to investing, such as &quot;dollar
	  cost averaging&quot;. In summary of (4.1) to (4.3), large board lots make for
	  &quot;lumpy&quot; and inefficient investment with friction in the market.</li>
	  <li>If an issuer wishes to declare a scrip dividend or a rights issue
	  or a bonus issue (other than a very large N:1 issue) then almost every shareholder would
	  end up with odd lots, and the odd-lot board would become more important than the normal
	  trading screen. The only winners would be brokers who buy and consolidate odd-lots at big
	  discounts due to the lack of transparency and liquidity in fractional lots.</li>
	  <li>If an issuer declares a rights issue, then the nil-paid rights
	  would have a much smaller board lot value and higher risk, as they are just short-term
	  call warrants. Would the Exchange prohibit such trading? Or prevent new investors from
	  buying the rights? Presumably not.</li>
	  <li>The Exchange survey indicates that the average retail portfolio
	  size is $150,000 and the average transaction size is $50,000. These are very precise
	  figures and I would be interested to know what the sample size and methodology was, as
	  well as the median and standard deviation of responses. Assuming that the figures are
	  correct, then this indicates an average of 3 investments (assuming each
	  &quot;transaction&quot; is in a different stock) which is a highly concentrated portfolio
	  with a large element of non-market risk. Portfolio theory states that non-market risk is
	  not rewarded, since it can be avoided. The Exchange should be encouraging portfolio
	  diversification, but a large MTS would discourage or prevent diversification. Regulators
	  will receive fewer complaints about failed investments if the amounts involved are a
	  smaller proportion of investors'; portfolios.</li>
  </ol>
  <p><i>Board lots are anachronistic</i></p>
  <p>Although the use of board lots implies a minimum transaction size, the
  setting of a minimum transaction size does not imply the need for board lots.</p>
  <p>There is no logical reason why transaction sizes can't be in any
  whole number of shares above the minimum. The board lot itself is an out-dated concept
  which arose from the way stocks were once settled here (B.C. - Before CCASS). Each
  board lot was represented by a separate share certificate, and investors settled sales by
  the delivery of a number of share certificates equal to the number of board lots sold.
  These huge piles of paper were passed around the market with executed transfer deeds,
  between a long sequence of buyers and sellers, until a book closure date approached, at
  which time they would all come in for registration. Registrars charged per board lot
  certificate, thus ensuring great profitability. Between book close dates, the passing of
  lots in &quot;street name&quot; allowed rapid settlement (and hence re-sale) without
  registration. It is fair to say this facilitated speculative trading, because a new holder
  was not &quot;locked in&quot; pending registration.</p>
  <p>In some other markets (e.g. London), even before they adopted
  &quot;scripless&quot; trading, the alternative system was followed. Namely, trades were in
  any whole number of shares, not lots. If a shareholder sold shares, his single share
  certificate was sent to the registrar for transfer, and a new one issued in the name of
  the transferee. If he had sold only part of his holding, the holding would be
  &quot;split&quot; and a new certificate issued to each party. This system also made it
  easier for companies to communicate with registered shareholders, as compared with Hong
  Kong, where the register was always far out of date.</p>
  <p>Now we have moved from B.C. to A.D. (After Demobilisation). All trades
  pass through CCASS for settlement, and most transactions are settled by book-entry,
  without the need for movement or registration of scrip, which remains in the vaults of
  CCASS, registered in the name of HKSCC Nominees Ltd. All of the historic reasons for use
  of board lots are gone (except, perhaps, the love of registrars for printing paper). So I
  think the Second Market should be traded in any whole number of shares, subject to a
  minimum only if the trading system is &quot;firm&quot;.</p>
</li>
  <li><p><b>Are the proposed entry requirements
    appropriate for the Second Market?</b></p>
  <p>Not in all respects.</p>
  <p>I disagree with CP(8.2(ii)), where free floats must be at least 35% of
  the company. There is no logic in this, and at no point in the paper does the Exchange
  explain or justify it. I presume the intention is to encourage a liquid market in the
  shares and one which is less open to manipulation. However, the percentage of the company
  which is public has no bearing on this except to the extent of its dollar value, which is
  dealt with by the $30m minimum.</p>
  <p>If a company is expected to have a market value of, say, $400m, then
  would the Exchange still require a 35% float of $140m? This would be almost 3 times the
  Main Board minimum of $50m. We should recognise that float size in small or medium sized
  companies is not an impediment to speculation or manipulation, and only has a deterrent
  effect at much higher levels. Pearl Oriental and Leading Spirit were once much larger
  companies than they are now, as was Beijing Enterprises, but the Exchange knows the story.</p>
  <p>The true way to deter speculation and manipulation is better disclosure
  by issuers, directors and shareholders (see proposed SDI reforms) and investor education
  on stock valuation methods. Manipulators would not be so profitable if investors were more
  educated.</p>
  <p>To impose a 35% float may deter companies from floating, because this
  reduces their ability to raise equity in the future without losing control. I note that
  the lower limit in other markets ranges from none to 25%.</p>

  <p><i>Restrictions on Share Disposals</i></p>
  <p>A further problem in CP(8.3) is the provision that loans secured on
  management shares must be &quot;taken for the direct benefit of the Company&quot;. This
  provision should be removed, as it could, for example, prevent Management Buy-Outs (MBOs)
  from subsequently going public. The directors would have bought the company and pledged
  their lives and shares to finance the purchase, and such a loan does not &quot;directly
  benefit the Company&quot;.</p>
  <p><i>Issue of New Shares Only</i></p>
  <p>In relation to CP(8.5), the Exchange should realise that promoters
  can remove cash by large pre-IPO dividends or asset purchases, and this is a regular
  practice on the Main Board so as to avoid the direct appearance of &quot;selling into the
  IPO&quot;. Therefor such a rule banning sales at the time of the listing would have no
  real effect. However, the rule may make it difficult for financial investors such as
  venture capitalists to realise part of their investment, and this is not a good thing,
  since this may discourage them from investing in the first place, or it may force issuers
  to list on overseas markets instead. I think the Exchange should not include this rule. If
  investors are told that management or financial shareholders are selling through the IPO,
  then they will take this into account in deciding whether to purchase/ subscribe for the
  shares.</p>
  <p><i>Limit on public shareholdings</i></p>
  <p>CP(8.6) proposes that &quot;no single public shareholder will be
  allowed to hold more than 10% of the issued share capital&quot;. This seems unworkable
  (except at the time of listing). At the least, it would require amendments to the law, as
  the Exchange cannot regulate investors, only issuers. The articles of the issuer could
  contain a restriction on transfers, but this would not prevent nominees or companies under
  common control from collectively owning more than 10%. In any case, most shares will be in
  CCASS and not subject to transfer on the share register.</p>
  <p>This seems like an effort to address the &quot;Pricerite&quot; problem,
  where an investor acquired more than 10% of the company, and the Exchange decided to
  suspend the shares because this reduced the &quot;free float&quot; below 25%. Other
  exchanges have long since recognised that it is not in the interests of minority
  shareholders to do this as it deprives them of a transparent market in which to sell their
  shares, and may encourage off-market trading. One can simply warn them that trading may
  become less liquid and/or prices may become more volatile, but it is better to have
  whatever trading there is on the market, where it can be seen.</p>
  <p>During the early 1980s, car giant British Leyland was over 99% owned by
  the UK Government, having been bailed out, but the listing was maintained and trading
  continued at a low level of liquidity.</p>
  </li>
  <li><b>Is it acceptable that the Principal Shareholders should be
    required to lock up their shares? Are the proposed lock up periods for the Management
    Shareholders and Financial Shareholders appropriate?
    </b>
  <p>Yes and Yes. However, this should not prohibit sales as part of the IPO
  (see above).</p>
  </li>
  <li><b>Is the &quot;let the buyer beware&quot; approach underpinning
    much of the additional disclosure requirement acceptable?
    </b>
  <p>Yes.</p>
  </li>
  <li><b>Is the concept of &quot;Active Business Pursuits&quot; as an
    alternative to the current requirement to show a three year profit track record
    acceptable?</b>
  <p>Yes.</p>
  </li>
  <li><b>Is the Statement of Business Objectives required by investors
    and/or is it too onerous or impractical for issuers to satisfy?</b>
  <p>I think it will certainly assist investors to make a better
  assessment of the company's prospects and of the degree of clarity of the
  management's strategy. It is not too onerous or impractical, but post-vetting of this
  part of the prospectus will have to be gentle, since it is clearly difficult to determine
  objectively whether disclosure is sufficient.</p>
  </li>
  <li><b>Are the continuing reporting requirements... too onerous?
    </b>
  <p>No. Quarterly reporting should also be required on the Main Board.</p>
  <p>Furthermore, the reporting must be more punctual - 5 months is too
  long to wait for final results. I suggest 3 months for final audited results and 2 months
  for the other 3 quarters. A preliminary, unaudited final result (subject to adjustment)
  could also be required within 2 months of the year-end. If these timeframes are a problem,
  then the company lacks adequate controls and internal information systems and is not
  suitable for listing.</p>
  </li>
  <li><b>Are the eligibility criteria proposed for Sponsors
    appropriate?
    </b>
  <p>Not in all respects.</p>
  <p>$50m is a lot of money, and is more than is needed to run and maintain
  a financial adviser. If the Exchange sets this as an on-going obligation (as proposed)
  then the entry barrier is more like $70m to provide for possible start-up operating
  losses.</p>
  <p>In other markets, it has been recognised that sponsoring second board
  issues is intensive and low-margin work, and that therefor it is unattractive to big
  investment firms to do this work. What happens is that experienced professionals summon up
  the courage to leave the big firms and set up their own firms and take on this work at
  lower costs. Boutique advisers spring up to service the new market. They cannot do this if
  they have to inject $70m of capital into the business.</p>
  <p>I think $15m is a more sensible level, if a limit must be set. A
  typical start-up might need 6 professionals at an average salary of $800,000 per year,
  plus about 1,000 sq. ft. of office space at $10/sf/month (they don't have to be in
  Central), plus sundry overheads of say $1m per year. This makes a total operating cost of
  about $6m p.a. plus bonuses (if profitable). So we can see that if a Sponsor does one IPO
  and then spends the next two years printing red ink it would not run out of capital.</p>
  <p>In proposing this limit I am of course not commenting on underwriting
  capacity. Issues may or may not be underwritten, and in particular in the case of
  selective marketings (placings) this is not wholly necessary. Instead, a minimum
  subscription target can be set and if not achieved, the issue does not proceed.
  Alternatively, the role of adviser and underwriter may be separated.</p>
  <p>I wholly support the criteria for experienced staffing of such firms.
  Indeed, in CP(11.2(vii)) I think that each issue should be under the direct responsibility
  of a <u>director</u>, not just a &quot;supervisor&quot;. The directors of a Sponsor must
  not be allowed to claim that they were not &quot;directly involved&quot; with their
  clients when things go wrong. Furthermore, directors of sponsors are more likely to be
  around to write the report after 2-3 years.</p>
  </li>
  <li><b>Is it adequate that the Exchange would only review a
    preliminary notification of listing and examine Listing Documents for the purpose of
    ensuring compliance with the Companies Ordinance?</b>
  <p>No. The claim that the &quot;Exchange is not equipped to assess
  commercial aspects of applicants&quot; has no real bearing. The same could be said of
  applicants for the Main Board. Businesses listing on the Second Market will not differ so
  much in their commercial activity from those on the Main Board.</p>
  <p>It is a regrettable fact that many sponsors in HK, even on the Main
  Board, allow inadequate or superficial disclosure in their prospectuses. I know, because I
  read most of them. If the Exchange did not take part in this process then things would be
  even worse. Even now, there is a practical issue that the line staff of the Listing
  Division often have no commercial experience, nor have they worked in sponsors, so they
  can't always spot the real issues and just rigorously follow check-lists. A program
  of secondments from the Exchange to some of the higher quality sponsors (and vice versa)
  might help to strengthen the vetting process.</p>
  <p>In short, I think the Exchange has to stay in the loop. The other
  problem with post-vetting is that whether a particular requirement (such as &quot;Active
  Business Pursuits&quot;) has been adequately met is a subjective matter, and a Sponsor
  would not want to be at risk of censure if the Exchange disagreed that it had satisfied
  the requirement, since this could put them out of business. Sponsors would rather hear
  objections before listing is granted.</p>
  </li>
  <li><b>Are the proposed corporate governance requirements appropriate?</b>
  <p>Yes in most respects, but not in others.</p>
  <p><i>Multiple directorships</i></p>
  <p>In reference to CP(13.2(iii)) I think the terms of qualification of
  Independent Non-executive Directors (&quot;INEDs&quot;) should be strengthened. Many
  companies on the Main Board have the same INEDs as companies under common control, which
  means that a more material portion of that person's income may be derived from their
  fees than if they only sat on one board. This leads to a &quot;cosier&quot; relationship,
  since the controlling shareholders are in practice able to determine the appointment and
  resignation of INEDs. If the Exchange does not believe this, then notice how often the
  INEDs change whenever there is a change of control of an issuer. The Rules should be
  changed so that a person who is an INED of a company may not sit on the board of any other
  company under the same control. Furthermore, Executive Directors of separate companies
  should not &quot;swap seats&quot; and sit on each other's boards as INEDs, since this
  is obviously a mutually beneficial arrangement.</p>
  <p><i>Professional conflicts</i></p>
  <p>INEDs on the Main Board are often partners or solicitors in legal
  advisers (or sometimes auditors) to the company. While it is good to have a lawyer or
  accountant as an INED, it should not be one whose firm (often very small) receives fees
  from the company for advice or other services, since this is a conflict of interest. If
  such an INED does not &quot;behave&quot;, his firm may lose a client (or several in the
  same group).</p>
  <p><i>Fitness</i></p>
  <p>Thirdly, if INEDs are to be effective then they need to have a
  working knowledge of the corporate governance regime and legal framework of Hong Kong. A
  physician who lives in Canada or a bureaucrat from Fujian province do not fit these
  criteria. They are likely to be &quot;men of straw&quot; who will always be
  &quot;uncontactable&quot; in responsibility statements and will generally sign anything
  they are asked to, and resign at the first sign of trouble.</p>
  <p>Some thought needs to be given to how to resolve this problem.
  Personally, I think INEDs should be required to sit some sort of short course on their
  duties and obligations (perhaps a set of seminars or video tapes to be arranged by the
  SEHK), be resident in Hong Kong, and be between the ages of 30 and 70 inclusive. Currently
  it is probably easier to become an INED than it is to get a liquor licence or a driving
  licence, but I think INEDs carry a greater responsibility as the eyes and ears of minority
  shareholders.</p>
  <p><i>Election of INEDs</i></p>
  <p>The election of INEDs at AGMs (either those who are elected for the
  first time, those who are up for re-election, or those appointed by the board since the
  last AGM) should be voted upon by independent shareholders only. It is a glaring
  contradiction in the current Rules that the INEDs can be re-elected by the controlling
  shareholders and executive directors. If independent shareholders are not satisfied with
  their representatives, there is nothing they can do about it. All the INEDs have to do is
  &quot;behave&quot; to get their fees for the next year.</p>
  <p>It is better to allow independent shareholders the right to remove
  INEDs (and elect others in their place), since it is the independent shareholders that the
  INEDs are representing.</p>
  <p>All shareholder resolutions on connected transactions and election of
  INEDs should be put to a poll, for the reasons explained at length in my earlier paper.</p>
  <p><i>Executive Directors' compensation</i></p>
  <p>CP(13.3) proposes a requirement that compensation increases not
  provided for in the prospectus should be approved by the Audit and Compliance Committee
  (&quot;ACC&quot;). CP(13.2 (iv)) proposes that the ACC would be chaired by an INED. This
  proposal does not go far enough, since the Executive Directors would still be in a
  majority on the ACC. Even if the ACC were to comprise only the 2 INEDs, they would still
  have little incentive to control pay.</p>
  <p>Compensation increases in the US and UK are proof that boards tend to
  choose their salaries and then find an &quot;industry norm&quot; to justify them to their
  independent committees, many of whom are also executive directors of other listed
  companies and therefor sympathise. &quot;Compensation experts&quot; are often hired (at
  the company's expense) who have a direct incentive (their fee) to come up with
  generous recommendations.</p>
  <p>It is better to make it a mandatory requirement that the prospectus
  stipulates (i) a maximum annual percentage for compensation increase; and (ii) a maximum
  percentage of pre-tax profits to be paid as bonuses, and that any subsequent variation of
  this be approved by independent shareholders as a &quot;connected transaction&quot; (on a
  poll). After all, such variations confer a direct benefit on the executive directors. This
  approach should also be adopted on the Main Board. Shareholders will not be averse to
  approving profit-related pay or share option schemes if the INEDs advise them that they
  are fair and reasonable.</p>
  <p><i>Suspension Policy</i></p>
  <p>An &quot;Exchange source&quot; has been giving briefings recently
  in a number of newspaper articles. I don't know why he declines to be named - is
  this &quot;stealthy regulation&quot;? The Exchange seems to have taken the view that after
  a suspension, dealings can only resume upon the request of the issuer. This is bizarre.
  The issuer remains subject to its disclosure obligations under the Listing Agreement, so I
  see no reason why the Exchange cannot &quot;throw the switch&quot; on the computer and
  allow trading to resume. Registration of transfers is presumably not a problem since the
  law and articles do not permit book closure for longer than 30 days in any year.</p>
  <p>In other jurisdictions, the suspension and resumption of trading is at
  the discretion of the exchange or the securities regulator and does not require the
  issuer's consent, although suspension by such authorities must of course be
  justifiable.</p>
  <p><i>Shareholders' Disclosures</i></p>
  <p>The Exchange may find practical problems with putting a 5%
  disclosure requirement in constitutional documents. At best, such a requirement can only
  be contractually binding on the registered shareholders, who are legally the members of
  the company. These will seldom be the beneficial owners - most public shares will be
  registered in the name of HKSCC Nominees Ltd. Therefor such a disclosure obligation would
  have no force until it became law.</p>
  </li>
  <li><b>Is it appropriate to give [independent] shareholders the
    opportunity to wind up a company...?</b>
  <p>Yes, but this is a very serious situation as it is likely to lead
  to a loss of some business with suppliers and customers of the group. Even the proposal of
  such a resolution would immediately impact on the business of the group. Therefor I think
  the criterion in CP(13.4(i)) (any public censure) is not sufficient. As soon as a public
  censure had been made, the company would be at risk of liquidation. This in turn may make
  the Exchange more reluctant to use the tool of Public Censure except in extreme
  circumstances, which would restrict the ability to regulate.</p>
  <p>Such a resolution should be put to a poll or it will be an ineffective
  rule. In the relevant circular, an Independent Financial Adviser should be required to
  provide an explanation of the effects of winding up and give an opinion as to the likely
  net proceeds if (a) the business and assets of the company are sold as a going concern or
  (b) the business is closed and liquidated. Option (b) could of course lead to much lower
  proceeds. The INEDs should also be required to give their recommendations to independent
  shareholders on the appropriate course of action (having received such advice). One
  possibility (effectively part of (a)) is that the controlling shareholders may choose to
  submit a privatisation proposal, which they are always free to do.</p>
  <p>It is likely that all the business and assets of a listed issuer would
  be held via a wholly-owned subsidiary, so that a winding-up order on the parent would not
  directly affect the subsidiaries, and would permit them to be sold as going concerns.</p>
  <p>If shareholders vote in favour of a winding-up, then the company will
  have to go through the voluntary winding-up process of the jurisdiction in which the
  company is domiciled. This will normally involve the appointment of a liquidator. The
  Exchange should consider the legal aspects of this process in each jurisdiction before
  permitting listing of companies domiciled in that jurisdiction, and Hong Kong is no
  exception. Offshore domiciles such as Bermuda may present practical difficulties as all
  court proceedings would take place there.</p>
  </li> 
  <li><b>Should consideration be given to facilitate the current winding
    up process given that this could give rise to practical difficulties and delays?
  </b>
  <p>I'm not sure I understand the question. If &quot;current
  winding up process&quot; means the formal winding-up process of the courts, then is the
  Exchange suggesting changes to the winding up procedures of the Companies Ordinance? Or
  the Bermuda Companies Act? This would be ambitious.</p>
  </li>
  <li><b>Is a display-of-interest trading medium appropriate for the
    Second Market?</b>
  <p>Yes, but the displays of interest need to be visible to the public
  to reduce the risk of rat-trading and front-running.</p>
  </li>
  <li><b>Should the Second Market allow overseas incorporated companies to list and if
    so what should be the additional requirements?</b>
  <p>Yes, same as for the Main Board, subject to the Exchange's
  investigation of the winding-up process in that jurisdiction as discussed in answer (14)
  above.</p>
  </li>
  <li><b>Would many companies be deterred from listing on the Second
    Market because of high costs?</b>
  <p>No. They may have other reasons, but companies which meet the entry
  criteria should be able to bear the costs.</p>
  </li>
  <li><b>(a) Should the Second Market be an entirely distinct market from
    the Main Board? (b) Would it be sufficient for the Exchange to either lower its Main
    Board's listing requirements or introduce a new Chapter under the current Exchange
    Listing Rules to accommodate smaller companies?</b>
	<ol style="list-style-type:lower-alpha">
	  <li>Yes, it should be distinct.</li>
	  <li>No, this would not be sufficient. I wholly agree with the Exchange's views that the
	    Second Market must be a recognisable separate entity. This makes it far clearer to
	    investors that they are taking on a separate class of risk assets by investing in such
	    companies.</li>
	</ol>
	</li>
</ol>
<p><b>Further remarks</b></p>


<p>I would be happy to discuss and explain my views verbally on any of the
matters raised in this submission. Please feel free to contact me.</p>

<p><a href="#top">Back to top</a></p>
<p><em>&copy; Webb-site.com, 1998</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=825">STOCK EXCHANGE OF HONG KONG LIMITED (THE)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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