
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

<script type="text/javascript">document.title="HK's stamp duty addiction";</script>

	<div class="summary">We look at the HK Government's opium-like addiction to stamp duty revenues, which have more than quintupled in 7 years. The budget asks for another fix. Stamp duty is sand in the wheels of the economy, distorting economic decisions and reducing economic output. It should be abolished rather than increased further. Higher stamp duty does not improve property affordability. HK needs a root-and-branch review of taxation to refocus on fair taxation of GDP rather than one-off measures and distortive policies.</div>

<h2 class="center">HK's stamp duty addiction<br>
<span class="headlinedate">2 March 2010</span></h2>
<p>One of the notable features of last week's Hong Kong Budget was another 
opportunistic move to throw sand in the wheels of Hong Kong's economy, 
increasing frictional taxation on immovable property valued at over HK$20m 
(US$2.56m) and further swelling government coffers, even after projecting a 
2009-10 budget surplus partly due to the high revenues from stamp duty.</p>
<p>By &quot;frictional taxation&quot; we mean taxation of actions which in themselves bear 
no relation to economic output. This type of taxation simply slows down the free market. When a 
property changes hands, the transfer in itself does not create any economic 
output, or GDP. For first-hand sales, there is usually a developer's profit, 
taxed with profits tax. For primary and secondary transactions, estate agents and lawyers 
earn fees which may 
generate taxable profits. For all the second-tier beneficiaries, such as 
newspaper companies which carry new and second-hand property advertising, there 
may be taxable profits. For all the people who work in those firms, there is 
income subject to salaries tax. But the simple transfer of the property in 
itself does not generate GDP. The same applies to shares, which we cover below.</p>
<p>The new rates of property stamp duty take effect on 1-Apr-2010 and the revised 
table is as follows:</p>
<table class="txtable center">
	<tr>
		<th>From HK$</th>
		<th>Stamp duty</th>
		<th>Effective rate</th>
	</tr>
	<tr>
		<td>0</td>
		<td>100</td>
		<td>NA</td>
	</tr>
	<tr>
		<td>2,000,000</td>
		<td>$100+10% of excess</td>
		<td>0.005%-1.50%</td>
	</tr>
	<tr>
		<td>2,531,760</td>
		<td>1.5%</td>
		<td>1.5%</td>
	</tr>
	<tr>
		<td>3,000,000</td>
		<td>$45k+10% of excess</td>
		<td>1.5%-2.25%</td>
	</tr>
	<tr>
		<td>3,290,320</td>
		<td>2.25%</td>
		<td>2.25%</td>
	</tr>
	<tr>
		<td>4,000,000</td>
		<td>$90k+10% of excess</td>
		<td>2.25%-3.00%</td>
	</tr>
	<tr>
		<td>4,428,570</td>
		<td>3.00%</td>
		<td>3.00%</td>
	</tr>
	<tr>
		<td>$,000,000</td>
		<td>$180k+10% of excess</td>
		<td>3.00%-3.75%</td>
	</tr>
	<tr>
		<td>6,720,000</td>
		<td>3.75%</td>
		<td>3.75%</td>
	</tr>
	<tr>
		<td>20,000,000</td>
		<td>$750k+10% of excess</td>
		<td>3.75%-4.25%</td>
	</tr>
	<tr>
		<td>21,739,120</td>
		<td>4.25%</td>
		<td>4.25%</td>
	</tr>
</table>
<p>Simplifying this somewhat, from 1988 to the new budget (if passed by LegCo), here is the 22-year 
history. Keep in mind that nominal property prices escalated substantially from 
1988 to 1997:</p>
<table class="numtable center" style="font-size:10pt">
	<tr>
		<th>Up to $k</th>
		<th>1-Apr-88</th>
		<th>1-Apr-94</th>
		<th>1-Apr-96</th>
		<th>1-Apr-97</th>
		<th>1-Apr-99</th>
		<th>28-Feb-07</th>
		<th>1-Apr-10</th>
	</tr>
	<tr>
		<td>250</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
	</tr>
	<tr>
		<td>500</td>
		<td>0.75</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
	</tr>
	<tr>
		<td>750</td>
		<td>1.50</td>
		<td>0.75</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
	</tr>
	<tr>
		<td>1,000</td>
		<td>1.50</td>
		<td>0.75</td>
		<td>0.75</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
		<td>-</td>
	</tr>
	<tr>
		<td>1,500</td>
		<td>2.00</td>
		<td>1.50</td>
		<td>0.75</td>
		<td>0.75</td>
		<td>0.75</td>
		<td>-</td>
		<td>-</td>
	</tr>
	<tr>
		<td>2,000</td>
		<td>2.75</td>
		<td>1.50</td>
		<td>1.50</td>
		<td>0.75</td>
		<td>0.75</td>
		<td>-</td>
		<td>-</td>
	</tr>
	<tr>
		<td>2,500</td>
		<td>&nbsp;</td>
		<td>2.00</td>
		<td>1.50</td>
		<td>1.50</td>
		<td>1.50</td>
		<td>1.50</td>
		<td>1.50</td>
	</tr>
	<tr>
		<td>3,000</td>
		<td>&nbsp;</td>
		<td>2.00</td>
		<td>2.00</td>
		<td>1.50</td>
		<td>1.50</td>
		<td>1.50</td>
		<td>1.50</td>
	</tr>
	<tr>
		<td>3,500</td>
		<td>&nbsp;</td>
		<td>2.75</td>
		<td>2.00</td>
		<td>2.00</td>
		<td>2.25</td>
		<td>2.25</td>
		<td>2.25</td>
	</tr>
	<tr>
		<td>4,000</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>2.75</td>
		<td>2.00</td>
		<td>2.25</td>
		<td>2.25</td>
		<td>2.25</td>
	</tr>
	<tr>
		<td>6,000</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>2.75</td>
		<td>3.00</td>
		<td>3.00</td>
		<td>3.00</td>
	</tr>
	<tr>
		<td>20,000</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>3.75</td>
		<td>3.75</td>
		<td>3.75</td>
	</tr>
	<tr>
		<td>+</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td>4.25</td>
	</tr>
</table>
<p>As the table shows, until 1999 the maximum rate was 2.75% on properties over 
$4m, so the sale of a $21.74m property 11 years ago was taxed at that rate, and 
will now be taxed at 4.25%, which is a 54.5% increase in the tax take.</p>
<h3>Higher stamp duty does not improve affordability</h3>
<p>It may seem like an obvious point, but the Financial Secretary obviously 
doesn't get it, so here goes.
<a href="http://www.nwd.com.hk/themasterpiece/index.html">He says</a>:</p>
<blockquote>&quot;we will increase the transaction cost of property speculation 
with appropriate tax measures so as to reduce the risk of creating a property 
bubble. I propose that with effect from 1 April this year the rate of stamp duty 
on transactions of properties valued more than $20 million be increased from 
3.75 per cent to 4.25 per cent, and buyers will no longer be allowed to defer 
payment of stamp duty on such transactions. In parallel, we will closely monitor 
the trading of properties valued at or below $20 million. If there is excessive 
speculation in the trading of these properties, we will consider extending the 
measures to these transactions&quot;.</blockquote>
<p>This is pure opportunism. With escalating property values and higher rates of 
property stamp duty since 1999, the HK Government has become increasingly 
fixated on the revenue, like a junkie on opium (on which the colony was 
founded). The easiest way for the junkie to get another fix is to knock up stamp 
duty. This does nothing to make property more affordable - it simply siphons off 
an additional part of the property price that a buyer is willing to pay (or a 
seller is willing to receive) for a property.</p>
<p>Furthermore, increasing transaction costs affects all buyers, not just 
&quot;speculators&quot;, whatever he means by that. Increasing transaction costs will 
reduce turnover and the taxable profits of estate agents, lawyers and others in 
the industry, and will increase the incentive to use companies to 
avoid the tax on future sales (see below).</p>
<p>The Government collected <strong>HK$7.5bn</strong> in stamp duty in the year 
to 31-Mar-2003. According to the latest budget, the Government now expects
<strong>$40.5bn</strong> in stamp duty for the year ending 31-Mar-2010, <strong>
up by more than $33bn, or 440%, in 7 years</strong>. A good portion of this 
comes from the 0.2% stamp on each share transaction (see below) but we are 
unable to find any breakdown of stamp duty revenues between property and stocks 
on the Treasury or Inland Revenue web sites, 
and this may be a state secret. (UPDATE: this was available in Schedule 9 of the 
Inland Revenue Department's
<a href="https://www.ird.gov.hk/eng/ppr/are.htm" target="_blank">annual reports</a>).</p>
<img class="center" alt="Stamp duty addiction" src="../images/HKstampDuty.gif">
<h3>Distortion of rent v buy</h3>
<p>One of the effects of the property stamp duty is to distort the economic 
choice between renting and buying. For any property over $6.72m, you are already 
paying 3.75% stamp duty, or about 100% of one year's rent (more in luxury 
property where yields are even lower than 3.75%).</p>
<p>By contrast, if you rent a property, then the stamp duty on that contract is 
0.5% of the average yearly rent (up to 3 years). For a typical 2-year 
residential lease, that's 0.25%&nbsp; of the rent per year, or in a typical 
3-year commercial lease, about 0.17% of the rent per year.</p>
<p>So if you plan on moving home more than once every 400 years, then the stamp 
duty (ignoring other factors) favours renting rather than buying. Your editor 
lived in rented property for the first 15 years that he lived in HK - not 
because he couldn't afford to buy, but partly because he expected his space and 
facilities requirements would keep changing. First he was a singleton, then half 
of a couple, then with one child, and now with two. He's rented 7 different 
homes before buying one. What is the point, we wondered, of paying almost one 
year's rent in stamp duty every time you need to move?</p>
<h3><a name="Avoidance"></a>Avoidance</h3>
<p>The second issue of property stamp duty is that, to paraphrase the late
<a href="http://en.wikipedia.org/wiki/Leona_Helmsley">Leona Helmsley</a>, &quot;only 
the middle class needs to pay stamp duty&quot;. It's not entirely accurate, but the 
point is this: once a property has been acquired by a company, you can freely 
transfer the ownership of that company without paying any further property stamp 
duty, because the registered owner of the property does not change. If the 
company has a share register in HK (as all HK-incorporated companies do) then 
you will be liable for stamp duty on the value of the shares, but only at the 
rate of 0.2%, and the value of those shares may be less than the property anyway 
if the company was funded with a shareholder loan or mortgage. For example, when 
the Langham Place complex was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080214/LTN20080214175.pdf">
sold</a> by <a href="../dbpub/orgdata.asp?p=502">Great Eagle Holdings Ltd</a> 
(0041) to <a href="../dbpub/orgdata.asp?p=34302">Champion REIT</a> (2778) in 
2008, a HK company was transferred at a valuation of $12,500m, and stamp duty 
was only $25m (at 0.2%), rather than $468.75m (at 3.75%), legally avoiding 
HK$444m of duty.</p>
<p>However, you don't even need to pay that 0.2% if the company is 
incorporated overseas with no share register in HK, because no transfer of 
shares takes place in HK. For example, on 13-Dec-06 Pacific Century Insurance 
Holdings Ltd (now <a href="../dbpub/orgdata.asp?p=9425">Fortis Asia Holdings Ltd</a>)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061214/LTN20061214052.pdf">
bought</a> HKL (King's Road) Ltd, a BVI company which owned
<a href="../dbpub/orgdata.asp?p=56595">Foundasia (HK) Ltd</a>, which in turn 
owned the office block at 1063 King's Road, Quarry Bay, from
<a href="../dbpub/articles.asp?p=506">Hongkong Land Holdings Ltd</a>. The 
price of HK$1,472m attracted zero stamp duty, because a BVI company was sold, 
legally avoiding HK$55.2m of stamp duty (at 3.75%). Incidentally, HK Land
<a target="_blank" href="http://www.hkland.com/press_room/html/1996/hlhl_19960809.html">
acquired</a> the site, then occupied by the old Crown Motors Building, from 
Richard Li's privately-held Pacific Century Group in Aug-1996 for US$105m and then 
redeveloped it, so it came almost full circle. Pacific Century Group had bought 
it from Inchcape Pacific (the Toyota distributor) for about HK$675m in Jan-1996. 
The hapless HK Land managed to make a loss on the deal, selling the company for 
less than the shareholder loans due from it.</p>
<p>The buyer of a property-owning company takes some risk that the company may 
have undisclosed liabilities, but the savings on stamp duty can offset that, 
particularly as the rate increases. If the vendor is a financially credible and 
trustworthy person or company which offers an indemnity against any such 
liabilities, then the risk is minimal.</p>
<p>So whenever you see a hotel, office property or luxury residential property 
being bought or sold by a listed company, particularly in a related party 
transaction, then it is quite often the case that the property itself is not 
sold, but the offshore company which ultimately owns it is sold, and no stamp 
duty is payable. When a company is sold, you will never see any sign of a change 
of ownership on the land registry.</p>
<p>So, naturally, when your editor finally bought a flat in HK, he used an 
offshore company to make the purchase. The company paid stamp duty (about 1 
year's rent), but if 
anyone ever trusts him enough to buy the company, then neither side will have to 
pay stamp duty, and both sides will likely be better off. Using a company also 
provides privacy, because the public land registry only records the name of 
the company as the owner.</p>
<p>Recently there has been a lot of attention on the purchase of flats at
<a target="_blank" href="http://www.39conduitroad.com.hk/">3988 Conduit Road</a> 
and in the
<a target="_blank" href="http://www.nwd.com.hk/themasterpiece/index.html">
Monsterpiece</a> in Tsim Sha Tsui. For almost every flat, the buyer was a separate 
company. Stamp duty, at least on secondary-market purchases, is a middle-class 
tax which is legally avoidable by the tycoons.</p>
<h3>Taxing &quot;speculators&quot;</h3>
<p>There's another wrinkle in the budget. Paragraph 31 says:</p>
<blockquote>&quot;The Inland Revenue Department (IRD) has established 
procedures to track property transactions involving speculation and will follow 
up each case closely. If it is found that such transactions constitute a 
business, the IRD will levy profits tax on the persons or companies concerned 
for profits arising from such transactions.&quot;</blockquote>
<p>What exactly is &quot;speculation&quot; in this context? Anybody who buys a 
flat knows that 
its future value is uncertain - he is putting his capital at risk, often several 
times his net worth, by using a mortgage. Is that speculation? Can you prove 
that someone is buying a property purely for the purpose of selling it &quot;for a 
profit&quot;? In an efficient market, why would anyone rationally expect a profit? 
What if they originally planned to rent it out for investment income (taxable), 
but then got an attractive offer and sold it? Does that make them a speculator?</p>
<p>And how do we know what &quot;constitutes a business&quot;? Is there some magic number 
of apartments that one can invest in, and subsequently sell, before being 
accused of running a business involved in property trading? Is there some magic holding period, beyond which 
an investor can safely sell without being accused of running a business?</p>
<p>These uncertainties are similar to those in the closed-end investment company industry 
which is largely absent from the HK market because of the uncertainty over 
whether the gains they make on selling shares are &quot;capital gains&quot; or &quot;trading 
profits&quot;, as we explained in <a href="pick2009.asp#ClosedEndFunds">
our article of 18-Dec-09</a>. In these areas, HK's much-trumpeted
<a target="_blank" href="http://en.wikipedia.org/wiki/Rule_of_law">rule of law</a> 
is undermined by the lack of legal certainty. In layman's terms, moving 
goalposts does not a fair game make.</p>
<p>The simple fact is that properties are capital assets which produce an income 
in the form of rent, which generates taxable profits. Any change in their 
capital value is a change in the net present value of their future income stream 
(rent minus expenses) and that income stream will be taxable when it comes. 
Taxing the change in value of the property is thus a form of double taxation, whether it is a 
short-term gain or one made after many years. </p>
<p>All that the Government is doing, by threatening to label people as 
&quot;speculators&quot; and tax them, is to incentivise those people to hold their 
investments through offshore companies and avoid the argument altogether.</p>
<h3>Stamp duty on shares</h3>
<p>Hong Kong is one of the last markets to still apply a transaction tax on 
shares. The same arguments apply to shares as they do to properties - the 
transfer of a share does not in itself generate any GDP. It is a frictional tax 
which inhibits turnover and reduces business for brokers, exchanges 
and other intermediaries. Not only that, but it only applies to shares in 
companies, not to warrants, callable bull-bear certificates or other 
derivatives. As a result, punters have an incentive to buy and sell their 
exposure to equities through derivatives rather than buying the actual stock. 
The stamp duty distorts the equity v derivative decision.</p>
<p>In case you think this problem does not apply to you, stop and think about 
your MPF or ORSO scheme, or the HK mutual funds you own, which pay stamp duty 
each time they buy or sell HK shares. If they turn over their portfolio once per 
year, then over a 20-year period you will lose about 4% of your equity 
investments in stamp duty.</p>
<p>Perhaps it is only the Listing Rules which prevent a derivative issuer from 
innovating stamp duty away, by coming up with a 100-year call warrant with a 
strike price of $0.0001 which automatically adjusts the conversion ratio 
whenever a dividend is declared. That would give you all the economic benefits 
of the underlying stock, but without the voting rights or stamp duty. Anyone up 
for it?</p>
<p>The following notable countries have no stamp duty on shares: USA, Australia 
(<a href="http://www.asx.com.au/about/pdf/stampduty010701.pdf">abolished</a> 
1-Jul-2001) and New Zealand. 
<a target="_blank" href="http://www.telegraph.co.uk/finance/2949136/Stamp-duty-The-facts.html">In the EU</a>, only Denmark, 
<a target="_blank" href="http://www.ise.ie/index.asp?locID=281&amp;docID=-1">Ireland</a> and the UK have 
stamp duty on shares. Ireland charges 1%. The UK has the second-highest rate in Europe, charging 0.5% on 
one side of the transaction, but this is widely avoided by professional 
investors using contracts for 
differences and various exemptions for market makers. In 2007 the London Stock 
Exchange and others commissioned a consultancy to estimate the benefits of 
abolition for the UK economy. Amongst other things, the
<a target="_blank" href="http://www.investmentuk.org/press/2007/stampdutyreport.pdf">
report</a> pointed to the likely increase in share prices and reduction of cost 
of capital for issuers due to the elimination of the net present value of future 
stamp duty costs on the investment portfolio.</p>
<h3>Refocus on GDP</h3>
<p>Rather than tinkering with hand-outs and other &quot;one-off measures&quot;, HK badly 
needs a root-and-branch review of its taxation policy. There is huge scope to 
make the system simpler, fairer and more efficient. The aim should be to tax the 
economic output (GDP in the form of corporate profits and personal earned 
income) in a uniform but efficient way, and not to distort economic choices with 
taxation incentives or disincentives. We've written in the past about the 
problems with <a href="tax1.asp">housing benefits</a>, for example, and there 
are many more areas for reform beyond the scope of this article.</p>
<h3>Make Stamp Duty history</h3>
<p><a href="http://en.wikipedia.org/wiki/Stamp_Act">Stamp Duty</a> has an 
interesting history - it was introduced in the UK in 1694 as a duty on vellum, 
parchment and paper during the joint reign of King William III of Orange and 
Queen Mary II, to finance a war in France. William of Orange was Dutch by birth, 
and stamp duty had been introduced in Holland in 1624, so perhaps he imported 
the idea. It was only supposed to last 4 years in the UK, but is still going 316 
years later, albeit on different assets. The attempted enforcement of the
<a target="_blank" href="http://en.wikipedia.org/wiki/Stamp_Act_1765">Stamp Act 
of 1765</a> in the English colonies of America led to the outcry of &quot;no taxation 
without representation&quot; and was a contributing factor to the American War of 
Independence. With a history like that, it is time for this former British 
colony to stamp out the stamp duty.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=34302">Champion Real Estate Investment Trust</a></li>
				
				<li><a href="/dbpub/articles.asp?p=502">GREAT EAGLE HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3728">HKSAR Government</a></li>
				
				<li><a href="/dbpub/articles.asp?p=506">HONGKONG LAND HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9425">TongChuang Holdings Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=189">Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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