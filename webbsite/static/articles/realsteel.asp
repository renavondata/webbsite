
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

<script type="text/javascript">document.title="The Real Steel";</script>

	<div class="summary">From the sponsor who brought you Tom.com and Techpacific.com comes the latest offering, iSteelAsia.com, spun out of main-board listed Van Shung Chong Holdings and assisted by iMerchants. Webb-site.com reveals how connected persons of VSC bought shares of iSteelAsia at a 99.4% discount to the IPO price, the day before the prospectus was published and without VSC independent shareholder approval. We also look at how little investment has gone into the site and examine its business prospects.</div>

<h2 class="center">The Real Steel<br>
<span class="headlinedate">24 April 2000</span></h2>
<p>What do you know about <a href="http://www.isteelasia.com/" target="_blank">iSteelAsia.com
Ltd</a> (<b>iSteelAsia</b>), the steel-exchange portal spun off on GEM last week
from main-board listed <a href="http://www.vschk.com/" target="_blank">Van Shung
Chong Holdings Ltd</a> (<b>VSC</b>)? </p>

<p>B2B - Bound 2 Be good, right? Wrong. We'll show you how this
deal was put together. <i>Webb-site.com</i> can reveal that the day before the
prospectus was published, the Chairman of VSC, his mother, an
&quot;independent&quot; non-executive director, and an &quot;acquaintance&quot;
of the controlling family effectively bought 18.34% of iSteelAsia from VSC at HK$0.00596 per share, a 99.4% discount to the IPO price, and all without seeking
independent shareholders' approval. Even after the initial drop in this dot-com
stock, they are still sitting on a gain of <b>HK$208.7m</b>. </p>

<p>We'll also take a look at the involvement of iMerchants Ltd (<b>iMerchants</b>)
in the project. Both GEM listings, now submerged like the Titanic, were
sponsored by BNP Prime Peregrine, the people who brought you <a href="tomfoolery.asp" target="_blank"> Tom.com</a> and
<a href="techpac.asp" target="_blank">techpacific.com</a>. </p>

<h3>Background</h3>

<p>VSC was founded in 1961 by Mr Yao Shu Sheng, Honorary Chairman
and father of the present Chairman Mr Andrew Yao Cho Fai. VSC, which listed in
1994, began as, and still is, one of Hong Kong's leading importers and
stockholders of high tensile steel reinforcing bars (rebars) for the
construction industry. It claims a one third market share and in October last
year it acquired Shougang Concord Steel Company Ltd which reportedly accounts
for another third of the market. So if you are in HK, knock on the walls of your
flat - with a two-thirds market share, the chances are your walls (and
foundations) contain steel supplied by VSC. It also distributes H-piles, tube
piles and other steel products, plastic resins (mostly from <a href="http://www.polymerland.com/" target="_blank">GE
Plastics</a>), injection moulding machines (from <a href="http://www.jsw.co.jp/" target="_blank">Japan
Steel Works Ltd</a>), <a href="http://www.caradon.com/plc/web/company/sol.htm" target="_blank">Twyford</a>
baths from England and kitchen cabinets. </p>

<p>Apart from straight warehousing and distribution of its steel
imports, VSC also does some processing such as slitting and cutting sheets from
coils, and cutting and bending rebars into shape. All this is good steady
business. </p>

<h3>Trading Department</h3>

<p>You might regard a sequence of buying, stockholding and selling
a product to be a form of trading, but this is not how VSC defines it. They have
had a &quot;Trading Department&quot; which has purportedly been run separately
since Apr-97. The customers include end users, distributors and stockists in
Southern China. In other words, the non-HK trading business. </p>

<p>Some of this was conducted through a BVI subsidiary called VSC
(Far East) Ltd (<b>VSCFE</b>) which according to the annual report trades with
Mainland China, Europe and America, while some of it was conducted through the
main Hong Kong subsidiary, Van Shung Chong Hong Ltd (<b>VSCH</b>). Both are
wholly-owned by VSC. We presume VSCFE was used for non-HK trading so that it
would not be subject to tax in HK. </p>

<p>The iSteelAsia prospectus does not mention that VSC also has, or
had, two PRC-based companies whose activities were listed in the Mar-98 annual
report as &quot;<i>trading and stockholding of steel</i>&quot;. Both were joint
ventures with mainland steel producer, Shanghai Baosteel. </p>

<p>One of these, Guangzhou Free Trade Zone Baoshunchang
International Trading Co Ltd, was 70% owned by VSC. It was trading flat steel
products for use in things like electrical appliances and computer casings.
Turnover in 1997/98 was HK$18.32m with a gross margin of 4.79%. However, the
company suffered &quot;keen competition&quot; and bad debts from mainland
customers, and was shut down at the end of 1998. </p>

<p>The other JV is Shanghai Bao Shun Chang International Trading Co
Ltd, 66.7% owned by VSC. In 1998/99 its turnover fell 45% and gross profit fell
92%, with a gross margin of less than 1% and no contribution to net profit
(presumably a loss). The JV's businesses in colour-coated coils and other flat
products were hit by imports from Southeast Asia. </p>

<h3>No transfer to iSteelAsia</h3>

<p>The Shanghai trading JV is not being transferred to iSteelAsia
and there is no mention in the prospectus of its chequered history or of its
defunct Guangzhou counterpart. </p>

<p>The trading department (and its records, excluding the two JVs)
which has been transferred to iSteelAsia forms the basis of iSteelAsia's 2 years
and 9 months of track record. In a complicated restructuring, the assets,
liabilities and businesses of VSCFE and the steel trading division of VSCH (but
not the rest of it) were transferred to MetalAsia (Hong Kong) Ltd effective
31-Mar-00. That leaves VSCH largely intact, conducting its profitable HK
importing, stockholding and sales business (but we mustn't call it trading, must
we?). </p>

<p>Bearing in mind that the transfer was only effective on
31-Mar-00, accountants Arthur Andersen have had to review the combined track
record on an &quot;as if&quot; basis, as if the iSteelAsia group had been in one piece as
of 31-Dec-99 when the track record ended, extracting the track record from VSCFE
and VSCH. </p>

<h3>The Misconception</h3>

<p>The prospectus tells us that iSteelAsia was conceived in Jun-99
and work commenced in mid-Oct-99. A BVI company, iSteelAsia Limited (<b>iSAL</b>)
(not to be confused with the listed company) was incorporated on
27-Oct-99.&nbsp; </p>

<p>iSAL was originally set up with US$10 of capital as an 80:20
joint venture between VSC and iMerchants Group Ltd (<b>iMG</b>) (the unlisted
parent of iMerchants). It borrowed HK$2m from VSC to get started, and it
commissioned the iSteelAsia.com web site from iMerchants for US$500,000
(HK$3.9m) which was outstanding at 31-Dec-99 and at 29-Feb-00. In fact, in iMerchants'
prospectus, it only recognises half of that fee as payable up to 31-Jan-00.</p>
<p>The core concept of iSteelAsia is a glorified e-mail system.
When a buyer wants goods, he can post his requirements through forms on the
site. The site then forwards the requirements to all suppliers by e-mail, and
they can send back quotes on an anonymous basis. When quotes are accepted,
identities are revealed and the trade is then finalised.</p>
<p>In practice there must be numerous parameters (other than price
and volume) to be negotiated,
and we remain sceptical that B2B exchanges of this nature can take a meaningful
share of world trade. The whole point of the internet is to cut out the
middle-men, not to introduce more. Exchanges work best when the item traded
(such as shares in a company) are homogeneous, all items being of identical
specification, when standard settlement and delivery terms apply and credit risk
and quality control are non-issues. This allows buyers and sellers to place
their bids and offers anonymously, for trades to be automatically matched, and
prices and volumes for homogeneous or &quot;fungible&quot; items to be published
and tracked.</p>
<p>That's the case with shares and bonds, or with silver futures or
a particular grade of oil futures, but probably not with physical steel. When
multiple parameters other than price need to be negotiated, or when each counterparty
needs to assess the credit worthiness of the other, or the ability to fulfill a
contract, then the &quot;anonymous exchange&quot; system becomes impractical and
the ability to &quot;auto-match&quot; buyers and sellers breaks down. Direct
negotiations then take place, and the counterparties regard the result as a
commercial secret.</p>
<p>It is also the case that the large consumers and distributors of
products like steel and paper will already have steady relationships with
existing suppliers, who are in a sense &quot;pre-qualified&quot;. Therefore, if
a buyer wants to invite tenders from these familiar people, they can send out
e-mails themselves, or set up their own tendering web-site (as have a number of
the big auto firms) and invite bids from suppliers. They are unlikely to go to
an exchange and pay someone else to do it. A web
site can be established for minimal outlay.</p>
<h3>Exchange, or tendering site?</h3>
<p>There is a strong risk that iSteelAsia.com will simply end up as
the purchasing web site of VSC, which can make its requirements known through
that site. That's a good and valid use of the web. VSC has a <a href="http://www.vschk.com/vsc/operate/network/network.html" target="_blank">large
network of suppliers</a> who can communicate with it via the web site. In the
&quot;old days&quot; VSC would have used telephones and fax machines. The difference
is, VSC did not try to float its telephones and fax machines as a listed
company.</p>
<p>By the end of March, only 11 transactions had been concluded on
iSteelAsia, which compares with the &quot;more than a dozen trades&quot;
reportedly claimed by its Chairman (SCMP, 16-Mar-00). The prospectus is silent
on how many trades involved VSC or its subsidiaries at one end of the deal. The
first transaction was announced with fanfare on 20-Jan-00, a month after the
site was launched. The trade, which took place on 11-Jan-00, was between Duferco
Group of Switzerland and a party identified only as &quot;Shougang
Concord&quot;. It is unclear whether that is an external party or HK-based
Shougang Concord Steel Co Ltd, which had earlier been acquired by VSC in Oct-99.</p>
<p>Don't be misled by the large number of registered users,
currently at 928. We are one of them. It's easy to get registered with any name
you choose plus an e-mail
account. You can try this at home. If all our readers register, they'll have
thousands of &quot;users&quot; by next week. We wonder how many members of the
public signed up
simply in the hope that they'd get a preferential allotment of dot-com shares,
as they did in Tom.com and red-dots.com (for SUNeVision). Any such users were
disappointed (or, in retrospect, fortunate) not to get any priority, as the IPO
was done by way of a placing rather than public offer.</p>
<p>The real question is how many corporate users (who must be
vetted) will actually do B2B trades <i> between</i> themselves rather than with VSC.</p>
<h3>Restructuring</h3>
<p>On 13-Apr-00, the day before the prospectus was published, there
was a blizzard of restructuring transactions. Get your brain into gear and
follow this, because it will be worthwhile. All this took place in one day.</p>
<p>The original joint venture, iSteelAsia Ltd (iSAL, which was 80% owned by VSC and 20% by
iMerchants Group Ltd) was transferred
to another BVI holding company called iSteelAsia Holding Ltd (<b>iSAH</b>),
which was also owned 80:20 (4 shares and 1 share) by VSC and iMG. Nothing wrong with that.</p>
<p>Next, iSAH assumed liability for the HK$2m previously borrowed
from VSC by iSAL. Then VSC converted the loan into 7,996 new shares in iSAH.
At the same time, iMG paid US$500,000 (HK$3.9m) for 1,999 new shares in iSAH, which
effectively capitalises the fee for producing the web site. The
iMG subscription is equal to the amount owed by iSAL to its listed subsidiary
(iMerchants) for producing the web site. So iMerchants records
real revenue.</p>
<p>Net result: VSC and
iMG have put in HK$2m and HK$3.9m for 80% and 20% respectively of iSAH. Pretty simple so far.</p>
<p>On the same day, the &quot;Trading Department&quot; of VSCFE and VSCH
was transferred to a new HK company called MetalAsia (Hong Kong) Ltd in exchange for
shares, and these were then transferred to a BVI company called MetalAsia
Holdings Ltd (<b>MAH</b>), wholly owned by VSC. Again, nothing wrong with that.
The nominal price on the transfers was HK$3.5m, but as VSC was the ultimate 100%
owner the whole time, it doesn't really matter.</p>
<p>To even things out, on 13-Apr-00 VSC sold 20% of MAH to iMG for
a consideration of HK$17m. This amount was the same as the amount due
for the placing by iMG to VSC two weeks earlier, of 11,488,000 shares in
iMerchants at the iMerchants IPO price of $1.48. So effectively it was a share
swap. Net result: iMG has swapped about 1% of iMerchants for 20% of MAH, to
match its 20% holding in iASH. These two companies are essentially the entire
group that was floated - the Real Steel comes next...</p>
<h3>Now the good bit</h3>
<p>First, a quick who's who. Andrew Yao Cho Fai (<b>Andrew Yao</b>)
is Chairman of VSC. His mother is Yao Lin, Shiu Mei (<b>Ms Yao</b>). Another
player is Sophia Liang Ho Hang Chong (<b>Sophia Liang</b>) who is described in a
28-Mar-00 VSC press release as an &quot;<i>independent third party</i>&quot; but
in the prospectus is more curiously described as an &quot;<i>acquaintance of the
Yao family</i>&quot;, whatever that means. Moses Tsang Kwok-tai (<b>Moses Tsang</b>)
was appointed as an &quot;independent non-executive director&quot; of VSC on
29-Sep-99.</p>
<p>Moses Tsang was until 1994 Chairman of Goldman Sachs (Asia).
Perhaps by coincidence, a person called Moses K. Tsang was a director until
1-Dec-99 of Alexus Co Ltd, the holding company of EC Link Shenzhen, which as we
explained in a <a href="tomfoolery.asp" target="_blank">previous article</a>
became the track record vehicle for Tom.com. But we digress...back to the story:</p>
<p>On 13-Apr-00, Andrew Yao, Ms Yao, Sophia Liang and Moses Tsang
(we'll call them the <b>Fab Four</b>) bought 10%, 6%, 5% and 5% (total 26%) of iSAH and MAH from
VSC for a total cash payment of <b>HK$1,586,000</b>,
which, as we will show, was a tiny fraction of their worth based on the IPO
price. As a result, iSAH and MAH were owned as to 54% by VSC, 26% by the Fab
Four and 20% by iMG.</p>
<p>The Fab Four and iMG then transferred one fifth of their
holdings in iSAH and MAH to a new BVI company called TN Development Ltd (<b>TND</b>)
in exchange for its shares. VSC similarly transferred 10% out of its 54% stake. As a result,
iSAH and MAH were owned as to 44% by VSC, 20.8% by the Fab Four, 16% by iMG and
19.2% by TND, while TND was owned 54% by VSC, 20% by iMG, 10% by Andrew Yao, 6% by Ms Yao, 5% by Ms Liang
and 5% by Moses Tsang.</p>
<p>TND will be used to grant options to employees and customers at
5% of the IPO price. The exercise proceeds of $13.27m will eventually belong to the shareholders of TND as and when the options are exercised, but we will
ignore that benefit for now.</p>
<h4>Final step</h4>
<p>Following the above transactions,&nbsp; iSteelAsia
(the IPO vehicle which prior to this had no shares in issue) acquired 100% of
iSAH and MAH by allotting&nbsp; 2,300,000 shares in proportion to the
shareholdings acquired. Then a bonus issue was made of about 555.5 new shares for
each share held, raising the issued share capital to 1,280m shares. That's the
end of the long day of 13-Apr-00, and that is all that happened prior to the
IPO.</p>
<p>As a result of the final step, the Fab Four swapped their 20.8%
of iSAH and MAH for 20.8% of iSteelAsia, or 266.24m shares. Here's a summary of the amounts paid by the Fab Four for their
resultant shares in iSteelAsia, the listed company:</p>
<img class="center" alt="" src="../images/realsteel2.gif">
<p>As you can see, the Fab Four have paid just <b>$1.586m</b>, the day before the
prospectus went out, or an average price of just <b>$0.00596</b> per share, or a 99.45% discount to the IPO
price, for shares valued at <b>$287.5m</b>. That's a 181.3-fold
return. Even at the first day's closing share price of $0.79, it's&nbsp; a
132.6-fold return and the parties are sitting on 18.34% of iSteelAsia and paper
profits of <b>HK$208.7m</b>.</p>
<p>Since both Andrew Yao and Moses Tsang are directors of VSC and Ms
Yao is Andrew's mother, and they were all buying shares in its subsidiaries,
these transactions should surely have been treated as connected transactions,
but they were not. The VSC public shareholders had no say in it. The
transactions were not even announced - the &quot;reorganisation&quot; was just
presented as a done deal in a pro forma tree diagram in a 28-Mar-00 announcement.
That announcement concerned only the transactions with iMG.&nbsp; The Yao family
holding company (which holds more than 50% of VSC) approved those on the
basis that it had no conflict of interest.</p>
<p><b>We call upon the Stock Exchange and VSC to explain why these
transactions, which were so plainly beneficial to the parties involved, were not
subject to independent shareholders' approval.</b></p>
<p>There can be no suggestion that the transaction size fell below
the minimum disclosure threshold given that the value of the
shares, at the IPO price (which was the most reasonable basis at the time) was
$287.5m, or over 64% of VSC's last audited net assets.</p>
<p><b>We also believe this and a number of recent transactions
demonstrate that the Stock Exchange should require all IPO prospectuses to state
clearly what the average purchase price of each existing shareholder is. You
should not have to rely on <i>Webb-site.com</i> to figure this out.</b></p>
<h3>iMerchants</h3>
<p>On 15-Mar-00, prior to its own IPO, iMerchants conditionally
agreed to acquire from its parent (iMG) any iSteelAsia shares received by iMG,
for a consideration of 85% of the IPO price of iSteelAsia. That turns out to be
85% of $1.08, or $0.918 per share. As a consequence of all the shuffling
referred to above, iMG receives 204.8m shares (16% pre-IPO, 14.1% post-IPO) of
iSteelAsia, so
iMerchants will purchase those for a headline figure of $188,006,400.</p>
<p>However, the consideration for the purchase by iMerchants is to
be the issue of new iMerchants shares at higher of the Offer Price and the 5-day
average closing price of iMerchants immediately prior to the first day of
dealings in iSteelAsia. That average price turned out to be $0.66 compared with
the offer price of $1.48, so the iMerchants shares will be issued at $1.48. Divide that
into $188m and you get 127,031,351 new shares in iMerchants equal to 10.90% of
its existing share capital or 9.83% of the enlarged.</p>
<p>The share price of iMerchants has plummeted since its IPO, down
64% to $0.53 on 20-Apr-00. So the new shares will be worth $67.33m at market
price.</p>
<p>In summary, iMG parted with 11,488,000 shares in iMerchants (now
worth $6.1m) plus US$500,000 (HK$3.9m) to refund the web development costs
(total: HK$10m) in exchange for&nbsp; 204.8m shares in iSteelAsia (now worth
HK$162m at market price), which it will swap for HK$67.33m of shares in
iMerchants. On the other hand, iMerchants itself ends up with US$500,000 in web
development fees and 204.8m shares in iSteelAsia.</p>
<p>The iSteelAsia deal takes the iMG shareholding in iMerchants up
from 62.0% to 65.6%. The new iMerchants shares will be locked up for 2 years,
but it makes little difference because iMG can still sell other shares after 6
months and the newly locked-up shares will count towards the 35% stake that it
must hold for 12 months after listing.</p>
<p>Going forward, iSteelAsia will trade heavily with iMerchants.
The development and maintenance of the web site will continue to be outsourced
to iMerchants for a lump sum of HK$950,000 plus US$85,000 per month. That adds
up to HK$8.9m in the current year - or almost twice all of the revenue of
iMerchants in the year to 31-Mar-99. Overtime is extra, subject to an overall
cap on the fees of HK$15m.</p>
<h3>Enter Li Ka Shing</h3>
<p>Just as the deal began to look a bit &quot;sticky&quot; as they
say in investment banking, it was revealed that God was investing. Well not
quite God, but the Li Ka Shing Foundation Ltd subscribed shares in what was
called a &quot;pre-placing&quot;. That deal was conditional on the IPO
completing, so it was in practice part of the IPO, but the foundation got the
shares at a price of HK$0.80 per share, a 26% discount. Not only that, but the
72m shares represent 4.96% of iSteelAsia. That's an important point, because by
staying below 5%, the foundation is not a &quot;significant shareholder&quot;
under GEM rules, and avoids having its shares locked-up for 6 months. It can
sell whenever it likes.</p>
<p>In an SCMP article on 17-Apr-00 Andrew Yao was quoted as saying
that the lower price was because the agreement had been reached in December.
Funny that it wasn't announced sooner then - perhaps this is because the placing
agreement was only entered into on 29-Mar-00.</p>
<h3>Expenses high</h3>
<p>The IPO placing of 100m shares at $1.08 raised HK$108m, but a
massive $19.6m of that, or 18%, is being spent on the IPO expenses. Sponsor BNP
Prime Peregrine, which receives 4% plus an undisclosed financial advisory fee
and a documentation fee, is taking $2.7m of its fee in shares at the IPO price.</p>
<p>The high expenses are partly a consequence of an even more
ambitious original indicated pricing range of $1.55-$2.00 per share for 248m
shares rather than the 100m finally placed at $1.08.</p>
<h3>Conclusion</h3>
<p>What can we say? iSteelAsia has been put together by its
founders for minimal outlay and with maximum creativity. The outlay was an
investment of US$500,000 (HK$3.9m, fees for the web site) and a capitalised
shareholder's loan of HK$2m, plus the transfer of VSC's trading business (which
was tagged at HK$3.5m). That all adds up to a net outlay (after repaying other
shareholders' loans) of HK$9.4m. Not exactly a
high barrier to entry, is it?</p>
<p>This outlay has been converted into 1,280m shares worth
HK$1,011m at the current price of $0.79. If the Nasdaq market hadn't hit a rut,
it might have been $2.56bn at $2.00.</p>
<p>The Fab Four have effectively purchased 266.24m shares, now with
a market value of $210m, from VSC one day before the float, for the grand sum of $1.59m, and
without consulting the independent shareholders of VSC. One of the Fab Four is
even an independent non-executive director of VSC.</p>
<p>We can't help wondering if the listing division of GEM was
comatose when this one wafted past its nose.</p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10368">Chinese Energy Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5001">Hong Kong Shanghai Alliance Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11040">LI KA SHING FOUNDATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10365">North Asia Strategic Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=747">Li, Ka Shing (1928)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10393">Liang Ho, Sophia Hang Chong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=876">Tsang, Moses Kwok Tai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10372">Yao Lin, Shiu Mei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10356">Yao, Andrew Cho Fai</a></li>
				
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