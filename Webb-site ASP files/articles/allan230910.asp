
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="https://webb-site.com/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="../index.html" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="https://webb-site.com/rss.asp"><img alt="RSS feed" src="https://webb-site.com/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="https://webb-site.com/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="https://webb-site.com/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="https://webb-site.com/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="https://webb-site.com/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
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
			<form class="box4b" method="post" action="https://webb-site.com/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="https://webb-site.com/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="https://webb-site.com/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="https://webb-site.com/dbpub/orgdata.asp" method="get" name="f1">
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
		<li><a href="../index.html">Home</a></li>
		<li><a href="https://webb-site.com/dbpub/">Database</a></li>
		<li><a href="https://webb-site.com/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="https://webb-site.com/webbmail/login.asp">Log in</a></li>
				
				<li><a href="https://webb-site.com/webbmail/join.asp">Sign up</a></li>
				<li><a href="https://webb-site.com/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="index.html">Archive</a></li>
		<li><a href="https://webb-site.com/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="https://webb-site.com/pages/howtovote.asp">How to vote</a></li>
				<li><a href="https://webb-site.com/library/">Reference library</a></li>
				<li><a href="https://webb-site.com/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/vote/">Polls</a></li>
		<li><a href="https://webb-site.com/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="https://webb-site.com/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="https://webb-site.com/HAMS/">HAMS proposal</a></li>
				<li><a href="https://webb-site.com/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="PECSregister.asp">PECS register</a></li>
				<li><a href="https://webb-site.com/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="https://webb-site.com/books/">Webb-Books</a></li>
				<li><a href="https://webb-site.com/news/">Old newsletters</a></li>
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="https://webb-site.com/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="https://webb-site.com/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/pages/about.asp">About</a>
			<ul>
				<li><a href="https://webb-site.com/pages/aboutus.asp">About us</a></li>
				<li><a href="https://webb-site.com/photos/">Webb-Photos</a></li>
				<li><a href="https://webb-site.com/pages/mediaroom.asp">Media room</a></li>
				<li><a href="https://webb-site.com/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="https://webb-site.com/contact/">Contact</a></li>
		<li><a href="https://webb-site.com/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="https://webb-site.com/pages/hkradio.asp">Radio</a>
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
		<li><a href="https://webb-site.com/pages/TV.asp">TV</a>
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

<script type="text/javascript">document.title="An open letter to the Board of Allan International Holdings (0684.HK)";</script>

<h2 class="center">An open letter to the Board of Allan International Holdings (0684.HK)<br>
<span class="headlinedate">10 September 2023</span></h2>
<p>To: 
<a href="https://webb-site.com/dbpub/officers.asp?p=2949&amp;d=2023-09-09&amp;u=1&amp;hide=Y">The Board 
of Directors</a></p>
<p><a href="https://webb-site.com/dbpub/orgdata.asp?p=2949">Allan International Holdings Limited</a> (<strong>Allan</strong>)</p>
<p>Dear Directors,</p>
<p>I have been an excessively patient investor in Allan for over 23 years, first 
buying shares at the turn of the century on 24-Jan-2000, disclosing a 5% 
shareholding on 1-Apr-2003 when the disclosure threshold was reduced from 10% to 
5%, and gradually increasing my holding to the current position of over 12%. I 
even made Allan the <a href="https://webb-site.com/articles/pick2003.asp">2003 Webb-site Christmas Pick</a>, 
although I did write at the time:</p>
<blockquote>"the group had net cash (including held-to-maturity securities, time 
deposits, money-market funds and bank balances), after paying the final 
dividend, of about HK$172m, or about $0.51 per share. We have urged them to pay 
out the surplus as a special dividend, to improve the return on equity and the 
total return for investors, including the Cheung family."</blockquote>
<p>Since then, you have hoarded more and more equity, dabbled in investments in 
which you have no expertise and bought an investment property which is non-core 
to your business of "manufacturing and trading of household electrical 
appliances". That core business, which is 60 years old this year, has apparently 
gone into sunset mode.</p>
<p>I had hoped to avoid airing these matters publicly. I have repeatedly tried to engage with you to right-size the balance sheet, 
but to no avail. For a while in the late noughties and early 2010s, I was 
prepared to tolerate the overweight balance sheet because, after several years 
of stagnation from 2001 to 2007, the business was growing impressively. You had 
finally realised that to succeed, you needed to scale up and service your then 
big-brand customers such as <a href="https://www.philips.com/" target="_blank">
Philips</a>,
<a href="https://www.groupeseb.com/en/small-electrical-appliances-kitchen-electrics" target="_blank">
Groupe SEB</a> and <a href="https://www.delonghi.com/" target="_blank">De'Longhi</a> 
with more bargaining power and greater efficiency.</p>
<p>In the year to 31-Mar-2012, 
turnover peaked at HK$2,417m, but sadly since then it has fallen every year for 
11 years, 
reaching only $413m in the year to 31-Mar-2023, a drop of 83% from the peak, and 
less turnover than 24 years earlier in 1999, even after considerable inflation 
since then. </p>
<img class="center" alt="Turnover" src="https://webb-site.com/images/AllanTurnover.gif">
<h3>Mainland industrial property</h3>
<p>In 2006, you bought 2 adjacent parcels of land in Huizhou at "Hui Nam Hi-Tech 
Industrial Park" (<strong>HNHTIP</strong>), Huizhou, Guangdong, for HK$20.4m, for expansion. Construction began in 
Feb-2008 and the new factory in the first 2 buildings opened in Aug-2011, just 
before turnover peaked, when the site looked like this on Google Earth:</p>
<img class="center" alt="HNHTIP 2011-12-02" src="https://webb-site.com/images/AllanHNHTIP111202.jpg">
<p>On 4-Jul-2013, you
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2013/0704/ltn20130704856.pdf" target="_blank">
announced</a> the sale of Southern Well Holdings Ltd, which owned 2 parcels of 
land at Nanmen Xi Street, Danshui, Huizhou City, Guangdong, with various disused 
factory buildings, to one Ye Xujun (葉旭君) for net proceeds of HK$54.88m, or about 
$0.164 per share. The sale completed on 30-Aug-2013.</p>
<p>On 25-Apr-2018, as disclosed in the Mar-2018 annual report, the Group agreed 
to sell "part of its land use rights in the PRC" with a book cost of HK$3.145m, 
and properties on the land with a book value of $10.0m, to an "independent third 
party" for RMB21m (then HK$23.6m). The transaction completed in the year to 
31-Mar-2019 with a gain on disposal of HK$5.2m. Also in that year, construction 
on the third factory building at HNHTIP was completed. The latest satellite view 
shows that the Eastern slice of the site, presumably the part that was sold in 
2018-19, now has a completed multi-storey complex, indicating the redevelopment 
potential of the remaining portion of the site which currently holds only 2-storey 
factory buildings:</p>
<img class="center" alt="HNHTIP 2012-12-25" src="https://webb-site.com/images/AllanHNHTIP221225.jpg">
<p>In 2019, after less than 8 years of operation at HNHTIP, you recognised the 
long-term decline in the business by retreating from HNHTIP to your old factory 
in Lilin, consolidating production at that one site and leasing out the 
buildings at HNHTIP, which were therefor transferred to investment property in 
the accounts. You wrote in the 2019 results:</p>
<blockquote>
&nbsp;"We would closely monitor the market condition and development policy in 
	Huizhou so as to realise the value of the land and building situated in 
	[HNHTIP]."</blockquote>
<p>The newly-completed third factory block was leased out in Apr-2019 for 5 
years to an independent third party at CNY558k per month for the first 3 years 
with an option to increase 8% for the remaining 2 years. The other 2 buildings 
were leased out in Dec-2020 for 5 years to another independent third party.</p>
<p>In the 2023 results, HNHTIP was valued at HK$233.0m, or about $0.70 per Allan 
share.</p>
<h3>HK office property</h3>
<p>On 1-Nov-2010, you <a href="https://www.hkexnews.hk/listedco/listconews/sehk/2010/1101/ltn201011011298.pdf" target="_blank">
announced</a> the purchase of the 9th floor and 2 car spaces at 151 Gloucester 
Road (the <strong>Gloucester Road Property</strong>, then AXA Centre, now Capital Centre) for HK$153.7m, via a newly-created 
100% subsidiary, <a href="https://webb-site.com/dbpub/orgdata.asp?p=1659526">New Prestige 
Investments Ltd</a> (<strong>New Prestige</strong>). The office comprised 6 units with various existing tenancies and licenses. 
Your stated intention was:</p>
<blockquote>
	"After expiration of such existing tenancies and licence and depending on 
	the then market circumstances, the Group shall either continue to lease the 
	Property for investment purpose to strengthen its income base or use the 
	Property by itself."</blockquote>
<p>I understand the desire of some manufacturers to sink capital into 
their own head 
office and be free of tenancy negotiations with landlords, although with low 
yields on office properties, such a use of capital does result in lower returns on equity. 
However, in no circumstances is it acceptable for a 
manufacturer to be morphing into an investment property company "to 
strengthen its income base". You 
simply don't have the economies of scale that a large landlord like Swire 
Properties or Hysan Development would have, and investors didn't and wouldn't 
approve this diversion of their capital. If investors in Allan wanted to invest in office properties, 
they 
would buy shares in companies or REITs that are established and listed for that purpose.</p>
<p>On 29-Dec-2015, you
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2015/1229/ltn20151229873.pdf" target="_blank">
announced</a> the sale of your then office at 12th Floor of Zung Fu Industrial 
Building in Quarry Bay for HK$179m to a subsidiary of Swire Properties Ltd, for 
eventual redevelopment. The deal included a 3-year leaseback, of which the first 2 years 
would be at a nominal HK$1 per month and the market rate for the 3rd year, 
capped at $250k per month, all plus rates and management fees. The sale 
completed on 3-Mar-2016. The proceeds were equivalent to HK$0.534 per share, but you 
only distributed a special dividend of $0.28 per share and added the rest to the 
cash pile.</p>
<p>On 17-Sep-2018, you
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2018/0912/ltn20180912291.pdf" target="_blank">
moved the head office </a>out of Zung Fu Industrial Building and into 23/F, Chaiwan 
Industrial Centre, which you rent from <a href="https://webb-site.com/dbpub/orgdata.asp?p=662655">
Ardent Investment Ltd</a> (<strong>Ardent</strong>), "a subsidiary of a 
substantial shareholder" of Allan, for HK$123,800 per month. It was clear from that decision that 
Allan has no need to 
retain ownership of the Gloucester Road Property. The Group 
also rents land and factory premises in Lilin, Huizhou City, Guangdong from 
Allan Investment Co Ltd (<strong>AICL</strong>) which is 89% owned by Union 
Associates Ltd (<strong>UAL</strong>), which must also be the substantial 
shareholder referred to in relation to Ardent. As disclosed, UAL is held by the 
Cheung Lun Family Trust, the beneficiaries of which include the only 4 Executive 
Directors of Allan: siblings Maggie, Albert, Sophie and William Cheung.</p>
<h3>Bloated balance sheet</h3>
<p>At each year-end since the IPO, Allan has had a net cash position, which 
could initially be described as conservative and prudent but is now hideously 
obese. When assets have been sold, you have only distributed part of the 
proceeds. When profits have been made, you have retained a large portion of it, 
when there was no business case for doing so.</p>
<img class="center" alt="Net cash &amp; investments" src="https://webb-site.com/images/AllanNetC&amp;I.gif">
<p>And those investments - you apparently think the Board is a better judge of 
investments in bonds, funds and equities than your investors are. We can pick 
our own investments, thank you. You are not professional asset managers and you 
do not have a mandate to speculate in the markets. At one point in 2009-12, 
Allan even held debt investments the return on which was "linked to specific 
commodity indexes such as biofuels and agriculture products". That investment 
has as much relevance to kitchen appliance manufacturing as a food blender has 
to asset management.</p>
<p>As the chart below illustrates, the Group balance sheet has become dominated 
by net cash and investment properties. Prospects for the business are now so 
poor that in the Mar-2023 accounts, you found it necessary to impair Property, Plant and 
Equipment by HK$24.9m, leaving just $6.6m of PP&amp;E, even less than your Club 
Debentures of $10.3m. This will at least reduce future depreciation charges if 
and when the business recovers.</p>
<img class="center" alt="Shareholders' funds" src="https://webb-site.com/images/AllanEquity.gif">
<p>The Hong Kong Government has recently appointed a
<a href="https://webb-site.com/dbpub/officers.asp?p=30483631">Task Force on Enhancing Stock Market 
Liquidity</a>. So much of that problem has to do with low valuations, which 
in turn are related to poor governance, including the hoarding of excess 
capital, diluting potential returns on equity. If Allan did not have a 
controlling shareholder, it would have long ago right-sized the balance sheet or 
been taken over by people who would.</p>
<p>At the closing price of HK$1.11 per share on 
7-Sep-2023, Allan has a market value of just HK$369.7m, but net tangible assets 
of $1,007m, or $3.02 per share. The net cash and investments are $555m 
($1.67 per share), plus investments properties of $513m ($1.54 per share), of 
which the Gloucester Road property alone is valued at $280m ($0.84 per share).</p>
<p>As I said at the outset, I have been excessively patient. With limited time 
left, I can no longer afford patience and would rather not leave the matter to 
potentially more activist successors who will manage my assets after my death. Your 
retention of excess capital borders on oppression of minority shareholders, 
something that would be legally actionable. In Allan's 60th year of business, 
this behaviour is a shameful stain on the Group's reputation. I urge you, without further delay, to:</p>
<ul>
	<li>Announce the convening of a Board meeting to declare the payment of a 
	special dividend of the surplus cash. Even if you turn the business around 
	and double last year's turnover to about $800m, that level of turnover was 
	exceeded in 2000-1 with net cash and investments of $111m at year end. Even 
	with a margin of safety, Allan does not need to hold net cash of more than 
	$150m, allowing a distribution of $405m, or about <strong>$1.22 per share</strong>.</li>
	<li>Announce the appointment of a reputable estate agent to conduct a sale 
	of the Gloucester Road Property by 2-month open tender and a prompt sale to 
	the highest bid, with a reserve price 20% below the latest valuation. Don't wish that you had sold it at its peak valuation in 
	2019. One can never time the market. From any point, it could just as easily go down than up. The point is that 
	Allan has no business investing in office properties. In the same 
	announcement, undertake to distribute all the net sale proceeds as a special 
	dividend. At current valuation, that would be <strong>$0.84 per share</strong>, 
	minus expenses. As the property is held by a special-purpose vehicle (New 
	Prestige), Allan can alternatively transfer that vehicle, to reduce stamp duty 
	from 4.25% to 0.2%. Bidders could be invited to tender on either or both 
	bases.</li>
	<li>Similarly, announce the appointment of a reputable agent to tender the HNHTIP former factory site (or its corporate owner) 
	for sale to the 
	highest bidder, with existing tenancies. Alternatively, if the Cheung family 
	fancies its chances of redeveloping the site in future, I would be willing 
	to approve a connected sale at the latest valuation of HK$233m (which is 
	based on its existing use), provided that in either case, all the proceeds 
	are distributed as a special dividend. At latest valuation, that would be 
	equivalent to <strong>$0.70 per share</strong>, less costs and any taxes.</li>
	<li>Sell or redeem all investments in securities and funds, and undertake 
	not to make such investments in future. Instead, commit to a dividend policy 
	of retaining no more cash than is necessary for reasonable contingencies, 
	not for Armageddon.</li>
</ul>
<p>These moves would be in the interests of all shareholders, including the 
controlling Cheung family. It would demonstrate corporate reform for a new era, a 
commitment to better governance and respect for minority shareholder rights. It would of course be positively received 
by the market and begin to salvage Allan's market reputation. With a much leaner balance 
sheet, the Cheung family, who will receive their share of the special dividends, could then consider whether 
they wish Allan to remain a public 
company, or take it private at the right price in a transaction that I could 
support.</p>
<p>I look forward to your announcements.</p>
<p>David M Webb</p>
<p>Founder, Webb-site.com</p>
<p><em>&copy; Webb-site.com, 2023</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=2949">ALLAN INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=30534892">De'Longhi S.p.A.</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=30534890">Groupe SEB</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=30483631">HKSAR Task Force on Enhancing Stock Market Liquidity</a></li>
				
				<li><a href="https://webb-site.com/dbpub/articles.asp?p=36881">Koninklijke Philips Electronics N.V.</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="https://webb-site.com/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
		</ul>
	<hr>
<p><a href="https://webb-site.com/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="https://webb-site.com/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="https://webb-site.com/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="https://webb-site.com/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="allan230910.asp#top">Back to top</a></p>
<hr>
</div>

</body>
</html>