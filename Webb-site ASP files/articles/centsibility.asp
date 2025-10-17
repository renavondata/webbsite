
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

<script type="text/javascript">document.title="Cents and Sensibility";</script>

	<div class="summary">Internet incubator E1 Media, the largest shareholder of Pacific Challenge Holdings Ltd, has failed in a blatant attempt to siphon HK$170m of cash out of PCH in return for a wildly over-valued Cents.com Ltd. In a rare success for minority shareholders, the deal was overturned. We look into the background and tell you how it happened...</div>

<h2 class="center">Cents and Sensibility<br>
<span class="headlinedate">11 July 2000</span></h2>
<p>Pacific Challenge Holdings Ltd (<b>PCH</b>) was floated on the
main board of the SEHK on 13-Oct-98, and in its short history has rarely had a
dull moment. Before our main story, a little background. </p>

<h3>History</h3>

<p>PCH owned one of HK's smaller brokerages, Pacific Challenge
Securities, and through Pacific Challenge Capital it also does a roaring trade in
independent financial advisory opinions (the sort you see trotted out in
connected transactions) as well as a range of other HK corporate finance
business. </p>

<p>It was founded in late 1994 by Chairman Joseph Yu Shin Gay and
Managing Director Brenda Lui Yee Man, with $100m of capital from 17 shareholders
including &quot;<i>major corporations in the PRC, listed companies and high net
worth private groups in Hong Kong, and Asian and European conglomerates</i>&quot;.
At the IPO, the only other executive director was Richard Hui Chung Yee, who is
also a director of Central Development Group, controlled by Mr Hui Sai Fun. </p>

<p>The Oct-98 IPO of 59.72m shares was priced at HK$1.17 per share,
raising $69.9m gross and $60.9m net. The offer represented 25% of the company,
and no shares have been issued since then. </p>

<p>2 days prior to the IPO, PCH paid out a dividend of HK$74.65m to
its pre-IPO shareholders, which was more than the IPO raised. Hence it was one
of those floats that was done for reasons other than the funding requirements of
the company. </p>

<p>Six months prior to the flotation, and in the wake of the 1997
crash, there had been a restructuring of the ownership. On 3-Feb-98 HK-listed <a href="http://www.seapower.com.hk/" target="_blank">Seapower
Resources International Ltd </a>sold its stake of some 21% back to the firm at
the equivalent of $0.67 per share, for a total of $30.64m. The cost of this was
met out of funds raised from management and other shareholders who put in $31.1m
at an average of about $0.833 per share in Dec-97 and Feb-98 (but then got back
half of it in the pre-IPO dividend, reducing the cost to $0.417). </p>

<p>Of this money, $2m was injected by Ms Lui and $11.6m by Mr Yu,
while $16.9m was put up by a company called Roseville Consultant Ltd (<b>Roseville</b>).
Although Brenda Lui, then MD of PCH, held the only voting share in Roseville,
there were 168 non-voting shares and presumably each share cost HK$100,000. An
investor believed to be Scandinavian and disclosed only as Kistefos A.S (<b>Kistefos</b>).
held 50 of these shares and the investors who bought the other 118 shares in
Roseville were not disclosed. </p>

<p>Kistefos was already a large shareholder, and apart from its
interest through Roseville, it held 23.61% of PCH right after the float. It's
quite remarkable that the prospectus divulged no further information on this
largest shareholder of PCH. </p>

<p>The prospectus did, incidentally, contain a valuation of the
Stock Exchange seats at just $4.5m each, which shows just how generous the
Government has subsequently been with the merger terms of the SEHK. </p>

<h3>Weak results</h3>

<p>The market was in no mood for an opportunistic float. The issue
was barely subscribed, and PCH shares fell 48% to $0.61 by the end of 1998. The
group made an uninspiring profit of HK$31.0m in the year to 31-Mar-99, down 56%
on the previous year, which of course included the red-chip bonanza and the
Oct-97 crash. Trading volumes in the market collapsed in 1998. </p>

<p>The last published balance sheet, at 31-Mar-99, shows net assets
of some HK$195m, including net current assets of $176m and shares in the stock
and futures exchanges held at $15.5m. The group has no real estate. In the 6
months to 30-Sep-99 the group made an unaudited profit of $18.6m. </p>

<h3>&quot;For Sale&quot;</h3>

<p>On 16-Feb-00, during the heat of dot-mania, HK-listed <a href="http://www.midland.com.hk/" target="_blank">Midland
Realty (Holdings) Ltd</a> said it was negotiating to buy less than 35% of PCH
(avoiding the takeover trigger) from existing shareholders. The market expected
PCH to be used as a listing vehicle for the estate agency's internet business.
These talks were terminated 2 days later, but like any good estate agent,
Midland had effectively planted a &quot;For Sale&quot; sign in PCH's front
garden. </p>

<p>In fact, PCH was already in play. The shares had shot up earlier
in the month, causing the Company to deny any knowledge of why this should be
the case on <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000208/LTN20000208092.HTM" target="_blank">3-Feb-00</a>
and again on <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000209/LTN20000209026.HTM" target="_blank">8-Feb-00</a>
before finally admitting &quot;preliminary negotiations&quot; on <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000215/LTN20000215093.HTM" target="_blank">15-Feb-00
</a>when the stock was suspended. By this time, the stock had risen 208% since
the start of the month, to $2.40. </p>

<p>It then emerged that a second horse had entered the race for
PCH. On <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000221/LTN20000221082.HTM" target="_blank">19-Feb-00</a>,
PCH announced that E1 Media Technology Ltd (<b>E1 Media</b>) had agreed to buy
67,934,000 shares totalling 28.4% of PCH, of which 15% was from Mr Yu, 8% from
Ms Lui and 5% from Roseville. The price was <b>$189.5m</b> or about $2.79 per
share of PCH. </p>

<p>As a result, when the deal was completed on <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000316/LTN20000316040.HTM" target="_blank">15-Mar-00</a>,
Mr Yu owned 1.34% of PCH and Ms Lui held no shares. E1 Media already held 3.73m
shares in PCH, so the deal raised its holding to exactly 30%. </p>

<h3>E1 Media</h3>

<p>Privately-held <a href="http://www.e1.com.hk/" target="_blank">E1
Media</a> is an internet start-up incubator founded by Dr Lily Chiang (<b>Dr
Chiang</b>), who is also an executive director and daughter of the founder of
HK-listed injection moulding machinery maker Chen Hsong Holdings Ltd. </p>

<p>Dr Chiang owns 60% of E1 Media, while 20% is owned by Hikari
Tsushin Partners II LP, 16% by Cable &amp; Wireless HKT, 2% by HK-listed Online
Credit International and 2% by PCH, which acquired its stake in Oct-99 for an
undisclosed sum. C&amp;W HKT's stake was announced on 18-Nov-99, followed by
Hikari's investment announced on 22-Feb-00 and although the amount was not
disclosed, Dr Chiang reportedly said the &quot;investment was definitely more
than $200m&quot;, reflecting a substantially higher valuation than earlier
investors. </p>

<h3>Cents.com Ltd</h3>

<p>Finally we come to the punch. On 19-Feb-00 that E1 Media had <i>&quot;no
concrete plan to inject any asset into [PCH]&quot; </i>and that <i>&quot;no such
assets has (sic) been identified to date&quot;.</i> </p>

<p>Sure enough, 2 months later, on 27-Apr-00 PCH <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000428/LTN20000428020.doc" target="_blank">announced</a>
(Word format) that Cents.com Ltd (<b>Cents.com</b>) was <i>&quot;identified
by the Company recently&quot; </i>and guess what - it was 100% owned by E1
Media. It is always impressive how the best assets you can find are those owned
by your largest shareholder. PCH proposed to spend <b>HK$170m</b> in cash to
acquire 100% of Cents.com. That is almost the entire value of the net current
assets of PCH at the last balance sheet date. It is also only $20m less than E1
Media paid for its stake in PCH in the first place, almost refunding the cost. </p>

<h3>Non-cents.com</h3>

<p>What is Cents.com? The first thing we tried was typing <a href="http://www.cents.com/" target="_blank">www.cents.com</a>
into our browser. Don't try this in front of the children - it comes up with a
&quot;domain for sale&quot; page followed by a links page with links to various
Yahoo! sites and some lurid pictures. Next we tried a <a href="http://www.networksolutions.com/cgi-bin/whois/whois/?STRING=cents.com" target="_blank">whois</a>
search which gives a domain registrant in the Philippines. It seems fairly
unlikely that Cents.com actually owns the cents.com domain. A quick trip to E1
Media's web-site failed to find Cents.com in any of their <a href="http://www.e1.com.hk/en/project.html" target="_blank">incubator
projects</a>. </p>

<p>Next, we tried the PCH shareholders' circular. At last, some
facts! Well, sort of. The company was incorporated in the BVI on 5-Nov-99 and it
provides a <i>&quot;modular type multi-lingual e-commerce platform for any
business to engage in business-to-business commerce and services including
procurement and online sales by catalogue and auction&quot;</i>. We are then
told <i>&quot;the real-time and interactive auction facilities provided by
Cents.com are unique services&quot;</i>. Unique? Haven't they heard of <a href="http://www.freemarkets.com/" target="_blank">freemarkets.com</a>,
<a href="http://www.alibaba.com/" target="_blank">Alibaba.com</a> and dozens of
others? </p>

<p>Cents.com had net assets of $5,903,896 at 31-Mar-00, with profit
since incorporation of $1,022,794. This implies an original investment capital
of just HK$4.88m. They wanted to sell it for 35 times that, just six months
after incorporation, The net assets include a loan of surplus capital to E1
Media in the amount of $6.7m. By the time the circular went out on 16-Jun-00
Cents.com had just 10 staff, of which 4 were in marketing. </p>

<h3>Valuation without opinion</h3>

<p><a href="http://www.chesterton.com.hk/" target="_blank">Chesterton
Petty</a> (take a bow) has valued the Cents.com business at $201.9m. However,
their discounted cash flow (DCF) valuation, which attempts to assess the present
value of future cash flow from the business, is not worth the paper it is
written on, for the simple reason of the following paragraph in their letter: </p>

<blockquote>

<p>&quot;the financial information, especially that relating to
projected revenues... was provided by [E1 Media]. We have relied to a
considerable degree on this financial data and we give no opinion of the
reasonableness or attainability of the underlying assumptions of the financial
forecasts&quot; </p>

</blockquote>

<p>In other words, the main role of the valuer was to whip out a
calculator and discount the future cash flow without having any idea whether it
could be achieved. </p>

<h3>House of Cards</h3>

<p>Next we turn to the Independent Financial Adviser, Asia
Financial Capital Ltd (<b>AFC</b>). In the usual terms, they concluded that the deal
was fair and reasonable and recommended the independent non-executive director
to advise the independent shareholders to vote in favour of the deal. </p>

<p>Under the proposal, net tangible assets would shrink by <b>74%</b>
from $0.93 per share to $0.24 per share, and the vast majority of the cash would
be removed. In their letter, AFC did not even mention this impact on net
tangible assets and instead focused on management's assertion that the
difference was all &quot;goodwill&quot; so that net assets (including goodwill)
are unchanged. </p>

<p>On the subject of effect on earnings, AFC referred to the <i>&quot;revenue
potential of Cents.com as reflected in its business valuation&quot;</i> and
repeated an opinion of the directors that the deal <i>&quot;could bring an
additional source of revenue to the group.&quot;</i> Carefully chosen words;
&quot; revenue&quot;, not &quot;earnings&quot;. </p>

<p>What we have here is a house of cards. The Independent
Shareholders are advised by the Independent Director, who relies on the Independent
Adviser, who in turn relies on the Independent Valuer, who relies on the
projections made by the controlling shareholder, who is.... well, not exactly
independent. </p>

<h3>Sensibility</h3>

<p>Thankfully, Independent Shareholders on this occasion ignored
the advice of the independent director and voted with their brains. Sources tell
<i>Webb-site.com</i> that HKSCC Nominees Ltd (HKSCC), representing public
shareholders with shares in the clearing system, demanded a <b>poll </b>on the
resolution in the meeting, so that each share counted, rather than just a show
of hands (1 vote per person).&nbsp; </p>

<p>Luckily, one shareholder (probably Kistefos) had over 10% of the
company, and instructed HKSCC to demand a poll. Unless you own 10%, the only
other way is to get 3 registered shareholders to work together. That's not easy
when most of the stock is held in the clearing system by HKSCC. </p>

<p>The holding of a poll on all votes is something that we have
repeatedly said should be mandatory for listed companies, and the SEHK indeed
proposed to do this (for connected transactions) in a May-99 consultation paper
but has since failed to bring this into effect. </p>

<p>As a result of the poll, the deal was defeated. PCH gets to keep
its money - for now at least. Until the next deal is &quot;identified&quot;. We
have seldom seen such a blatant attempt to extract such a large percentage of
the funds of a listed company in return for so little. </p>

<h3>A Mysterious Death</h3>

<p>On 10-May-00, just 2 weeks after the announcement of the
Cents.com acquisition, and having sold her shares in PCH in March for $52m, the
body of Ms Lui was found floating off Deep Water Bay. Her clothing was found on
a <a href="http://www.centamap.com/scripts/esrimap.dll?name=cent&amp;lg=B5&amp;tp=1&amp;cx=836789.420065803&amp;cy=812370.140459398&amp;zm=6&amp;sx=&amp;sy=&amp;sl=&amp;ss=0&amp;mx=836789.420065803&amp;my=812370.140459398&amp;ms=2&amp;ly=&amp;lb=&amp;lp=&amp;vm=&amp;ck=1&amp;ca=1&amp;cb=0&amp;mt=&amp;ts=0&amp;za=0&amp;zb=0&amp;click.x=393&amp;click.y=364" target="_blank">path</a>
linking Deep Water Bay with Ocean Park. A post-mortem showed the cause of death
was drowning, and no wounds were found. The coroner's hearing has not yet been
held, and it remains unclear what will happen to the ownership of the only
voting share in Roseville, which she held. </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1834">China Resources and Transportation Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5587">Knight Frank Petty Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7078">New Times Corporation Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20090">PIPER JAFFRAY ASIA LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=7080">Chan Lui, Brenda Yee Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6148">Chiang, Lily Lai Lei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7081">Hui, Richard Chung Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7079">Yu, Joseph Shin Gay</a></li>
				
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