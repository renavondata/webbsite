
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

<script type="text/javascript">document.title="Paul Y.-ITC: Just Say No";</script>

	<div class="summary">Charles Chan, Chairman of Paul Y.-ITC, has made an offer to buy its stakes in Australian-listed Downer EDI, HK-listed China Strategic Holdings Ltd and a pile of property, all for less than 10% of book value. Webb-site.com urges independent shareholders of both Paul-Y and its controlling shareholder, ITC, to vote it down.</div>

<h2 class="center">Paul Y.-ITC: Just Say No<br>
<span class="headlinedate">21 October 2002</span></h2>
<p>In one of the most outrageous attempts to destroy shareholder value that we
have ever seen,
Charles Chan Kwok-keung (<b>Mr Chan</b>), Chairman of Paul Y.-ITC Construction
Holdings Ltd (<b>PaulY</b>, 0498) has proposed a transaction in which he would
in effect acquire assets from PaulY at a 90% discount to book value. </p>

<p>PaulY is 42.59% owned by ITC Corporation Ltd (<b>ITC</b>, 0372) which in turn
is 34.82% owned by Mr Chan. In an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021008/LTN20021008009.pdf" target="_blank">announcement</a>
dated 7-Oct-02, ITC and PaulY said that Mr Chan <i>&quot;has requested the
directors of [PaulY] to place before its shareholders a proposal...&quot;</i> </p>

<p>The proposal involves the distribution of &quot;Scheme Assets&quot; held by
PaulY. The Scheme Assets include: </p>

<ul>
  <li>a 36.83% stake in <a href="http://www.downeredi.com/" target="_blank">Downer
EDI Ltd</a> (<b>Downer</b>, ASX:DOW), which is listed on the Australian Stock
Exchange. PaulY owns 352,727,322 shares representing 36.83% of Downer, with a
market value (at 18-Oct-02) of A$208.1m (HK$899.0m). The stake is carried
    in PaulY's books at <b>HK$774m</b>;</li>
  <li>a 14.55% stake in <a href="../dbpub/articles.asp?p=2911" target="_blank">China Strategic
    Holdings Ltd</a> (<b>CSH</b>, 0235). After a recent rights issue, CSH has
    consolidated net tangible assets of HK$2,322m, so PaulY's share is
    HK$337.9m. It is carried in the books of PaulY at <b>HK$644m</b>, but its
    market value is only HK$12.1m; and</li>
  <li>properties with a book value at 31-Mar-02 of <b>HK$884m</b>. This includes
    investment properties which were independently valued as at 31-Mar-02.</li>
</ul>

<p>The total value of these three items in PaulY's balance sheet is $2,302m,
although for unspecified reasons, the announcement puts the total Scheme Assets
at <b>$2,107m</b> as of 31-Mar-02. </p>

<p>It is proposed that the Scheme Assets will be transferred to a new
wholly-owned subsidiary of PaulY. This subsidiary will then be
&quot;distributed&quot; to shareholders, except that, as part of the plan, Mr
Chan would buy the entitlements of all the shareholders of PaulY except for ITC
for HK$0.20 per PaulY share. </p>

<h3>The price</h3>

<p>The announcement was written so cryptically that it never mentions the total
amount of the payment. We can tell you: there are 1,036,744,924 PaulY shares in
issue at 31-Aug-02, and ITC held 441,579,452 shares (42.59%). So the difference
is 595,165,472 shares (57.41%). That means that Mr Chan would pay <b>$119.0m</b>
for 57.41% of the Scheme Assets. </p>

<p>That would leave Mr Chan controlling the unlisted Scheme Assets company of
which ITC would own the remaining 42.59%. He has also asked ITC to put forward a
proposal to sell this stake to him at the same price per share as he is offering
to the other PaulY shareholders - so that ITC would receive just <b>$88.3m</b>. </p>

<p>If both deals take place, Mr Chan would get 100% of the company holding the
Scheme Assets for just <b>$207.3m. </b>Even if you take the lower figure of book
value at $2,107m, that amounts to a <b>90.2%</b>  discount, a gift of <b>HK$1,900m</b>
to Mr Chan. </p>

<h3>Just say no</h3>
<p>The distribution by PaulY of the Scheme Assets is a &quot;scheme of
arrangement&quot;, which means it is conditional on approval by a majority in
number representing three quarters in value of the independent shareholders
(other than ITC) who vote at a meeting for which the date has not yet been set.</p>
<h4>If you are a PaulY shareholder</h4>
<p>Mr Chan is presumably relying on the fact that the shares of PaulY trade at
only $0.217, a 92.5% discount to their net asset value of $2.89 per share. He is
hoping that shareholders would rather take $0.20 in cash and see their asset
value trashed than hang on and try to realise the underlying value in the stock.
The proposal would decimate net assets from $2.89 to $0.86 per share.</p>
<p>It is a cynical ploy to exploit the discount, much of which is based on the very
fear of this kind of transaction. But if shareholders stand up and stop the
deal, then perhaps in future the discount will narrow, because investors will be
more confident that this kind of deal will not happen. As it is a scheme of
arrangement, the deal will be voted on a poll where every share counts for 1
vote, not a show of hands. So vote AGAINST.</p>
<h4>If you are an ITC shareholder</h4>
<p>If the PaulY proposal proceeds, then the sale by ITC of its stake in the
Scheme Assets is still conditional on approval by independent shareholders of
ITC in general meeting, as it is a &quot;connected transaction&quot;. Shareholders of ITC should vote
AGAINST the sale of their company's interest in the
Scheme Assets to Mr Chan.</p>
<p>However,
this will be on a show of hands unless shareholders demand a poll, so if you are
a registered shareholder, make sure that you do! We have been waiting for years
for the Stock Exchange to close this loophole and require a poll on all
resolutions.</p>
<p>For details on how to vote, see our <a href="../pages/howtovote.asp" target="_blank">voting
guide</a>.</p>
<h3>The INEDs</h3>

<p>Even the board of PaulY has its reservations about this. The announcement
went to some pains to indicate this, stating that the proposal was <i>&quot;initiated
by [Mr Chan] and not solicited by [PaulY] itself&quot;. </i>The distinction is
subtle given that he controls the company anyway. In a masterpiece of
understatement, they wrote <i>&quot;the directors of [PaulY], other than [Mr
Chan] consider the consideration...may not be fair and reasonable&quot;.</i></p>

<p>The board of ITC has not yet expressed any view.</p>

<p>The independent non-executive directors of PaulY are Vincent Cheung Ting-kau,
the Senior Partner of his eponymous <a href="http://www.vtkcyc.com/" target="_blank">law
firm</a> and <a href="http://www.paulhastings.com/contact_information/contact_information3.asp?employee_id=1870242O170022OPH" target="_blank">Ernest
Kwok Shiu-keung</a>, formerly a partner of Kwok &amp; Chu and now a partner of
law firm <a href="http://www.kooandpartners.com" target="_blank">Koo &amp;
Partners</a>.</p>

<p>The INEDs of ITC are <a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member.asp?id=19614" target="_blank">Winston
Calptor Chuck</a>, a consultant with law firm <a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member_firm.asp?id=1653&amp;ftype=L" target="_blank">James
P.Y. Lam &amp; Co</a>, and Dominic Lai Hing-chiu, Senior Partner of law firm <a href="http://www.iulaili.com/" target="_blank">Iu,
Lai &amp; Li</a>.</p>

<h3>A waste of time and money</h3>

<p>In a vague commitment, the announcement states that:</p>

<blockquote>
<p>&quot;[Mr Chan] has agreed to pay all the costs incurred in
implementing the proposal including all costs incurred by [PaulY]&quot;.</p>

</blockquote>
<p>This does not make clear what happens if the proposal is not
&quot;implemented&quot; because it is voted down. We call on him to confirm that
regardless of the outcome, he will pay all the costs incurred in the proposal -
including the fees of lawyers, accountants, printers and independent advisers.
The statement also does not say whether he will pay the costs of ITC. He should.
It is the ultimate insult to use minority shareholders' funds to put forward
such egregious proposals.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=878">Blue River Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3385">PT International Development Corporation Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=871">Chan, Charles Kwok Keung</a></li>
				
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