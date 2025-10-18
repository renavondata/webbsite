
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

<script type="text/javascript">document.title="BSD and SSD 2.0 - submission to LegCo Bills Committee on Stamp Duty (Amendment) Bill 2012";</script>

	<div class="summary">We dissect the proposed Buyer's Stamp Duty and increase and expansion of Special Stamp Duty on residential properties in HK. Government replies to Webb-site reveal that they don't actually have data to support the discrimination between Permanent Residents and Non-PRs, even if the duty were constitutional, which it is not.</div>

<h2 class="center">BSD and SSD 2.0 - submission to LegCo Bills Committee on Stamp Duty (Amendment) Bill 2012<br>
<span class="headlinedate">5 February 2013</span></h2>
<p class="revisedate"><a href="#update">updated</a> 12-Feb-2013</p>
<p>Dear Members of the Committee,</p>
<p>Thank you for your invitation to submit views on the Stamp Duty (Amendment) 
Bill 2012 (the <strong>Bill</strong>), which proposes (backdated to 
27-Oct-2012):</p>
<ul>
	<li>for Special Stamp Duty (<strong>SSD</strong>) on the resale of 
	residential property within a certain period after purchase, to expand the 
	scope from 2 years to 3 years, and to increase the rates from 15% to 20% of 
	value in the first 6 months, from 10% to 15% in the second 6 months, and 
	from 5% to 10% in the 2nd and 3rd year; and</li>
	<li>to introduce Buyer's Stamp Duty (<strong>BSD</strong>) on 
	residential property, in addition to regular stamp duty, unless the buyer is 
	a
	<a href="http://www.gov.hk/en/residents/immigration/idcard/roa/verifyeligible.htm" target="_blank">
	permanent resident</a> (<strong>PR</strong>) of HK.</li>
</ul>
<p>I have read the
<a href="http://www.legco.gov.hk/yr12-13/english/bills/brief/b01_brf.pdf" target="_blank">
Legislative Council Brief</a>, as well as the earlier brief by Government of 
October 2012, &quot;<a href="http://www.legco.gov.hk/yr12-13/english/panels/hg/papers/fahg1102-thb201210-e.pdf" target="_blank">Further 
Measures to Address the Overheated Property Market</a>&quot;.</p>
<h3>Stamp duty is an antiquated and inefficient tax</h3>
<p>Regular stamp duty is an antiquated and economically inefficient tax, 
introduced into Britain in 1694 by King William III of Orange and Queen Mary II, to 
finance a war with France. It taxes not the generation of economic gain, as 
salaries tax and profits tax do, but instead taxes the mere transfer of certain types 
of assets, thereby adding friction to the wheels of the economy. In real estate, 
it distorts the choice between owning and renting homes, offices and shops, and 
provides a disincentive to relocation, often being equivalent (at
<a href="http://www.gov.hk/en/residents/taxes/stamp/stamp_duty_rates.htm" target="_blank">
current rates</a>) to over 1 year's rent. In the markets, it distorts the choice 
between shares (where transfers are taxed) and derivatives (where they are not). 
So if the purpose of stamp duty is to stifle speculation, then in the stock 
market, it does the opposite, driving people into warrants, options and other 
derivatives.</p>
<p>The only merit of regular stamp duty is that it raises revenue, but it is 
better to do that by taxing GDP via salaries tax and profits tax, and not taxing 
asset transfers, as these do not, of themselves, generate GDP. Regular stamp 
duty is also easily avoided with corporate tax planning, so transfers of 
ultimate ownership of larger properties such as hotels, office blocks, and 
increasingly, higher-value homes, often take place by transfers of holding companies 
instead.</p>
<h3>SSD is unconstitutional</h3>
<p>Special Stamp Duty, as enacted in HK in 2011 (backdated to 20-Nov-2010), 
penalises an owner for re-selling his property within a fixed period of time, by 
seizing a portion of the proceeds. A person who sells after the time has elapsed 
suffers no such impact. We again submit, <a href="ssd2.asp">as we 
said then</a>, that SSD is unconstitutional. The HKSAR has the power of taxation 
under
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Article 108 of the Basic Law</a> (<strong>BL 108</strong>), but that power is 
not unfettered - it only applies to legitimate taxation, the purpose of which is 
to raise revenue, either for general purposes or to offset a related cost born 
by society as a whole. You can't just invent a penalty and call it &quot;taxation&quot;, 
otherwise any behaviour, even if not harmful, could be penalised through 
taxation, rather than through the due process of the criminal law.</p>
<p>Tobacco duty, for example, is a legitimate tax because of the 
healthcare costs of smoking borne by the Government through the public health 
system, the lost taxes from premature retirement and death, and the welfare 
costs for surviving dependents. If smoking was 
not harmful to health, tobacco duty would have no legitimate purpose - it would 
be overly narrow, singling out one consumer product over others. In another 
example, fuel duty is a legitimate tax because of the costs of building and 
maintaining the roads (including the opportunity cost of the land they occupy) 
and the health costs from vehicular air pollution.</p>
<p>The purpose of SSD was not to raise general revenue - in fact it reduces 
revenue, by inhibiting transactions and hence reducing regular stamp duty. The 
admitted purpose of SSD was to target an alleged harm to the public interest, 
namely &quot;speculation&quot;. Yet the Government has not provided a shred of evidence, 
either qualitative or quantitative, that &quot;speculation&quot; causes costs to society 
that should be recovered through taxation. If anything, the evidence points to 
the contrary - HK was built on risk-taking entrepreneurialism. When a person 
buys old apartments for renovation and resale, he upgrades the quality of HK's 
housing stock, and pays profits tax on his profits. Both are social goods. That 
renovation industry, which also generated employment, has been heavily impacted 
by SSD, and will be further harmed by its expansion and by BSD (see below).</p>
<p>
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Article 105 of the Basic Law</a> (<strong>BL 105</strong>) protects property 
rights, an essential element of a free market and capitalist system, which
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_1.html" target="_blank">
Article 5 of the Basic Law</a> promised &quot;shall remain unchanged for 50 years&quot;. 
You only really own an asset if you are free to dispose of it to whomever you 
like without penalty, so BL 105 says that the HKSAR:</p>
<blockquote>&quot;shall, in accordance with law, protect the right of 
individuals and legal persons to the <u>acquisition</u>, 
use, <u>disposal</u> and inheritance of property&quot;.</blockquote>
<p>Implicitly, there should be no penalty for exercising that right, just as 
there cannot be a levy on free speech (<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">Article 
27</a>) or religious affiliation (Article 32). So a specific tax on the sale of 
newspapers, Bibles or Korans would be unconstitutional. In essence, you can't 
establish a right in a constitution and then remove or inhibit it through 
penalties. In its
<a href="http://www.legco.gov.hk/yr12-13/english/panels/hg/papers/fahg1102-thb201210-e.pdf" target="_blank">
own paper</a> (page 4, para. 9), the Government admits that SSD is a &quot;penalty&quot;.</p>
<p>So if a levy on the early resale of real estate is not a legitimate 
tax, then it is a penalty and falls outside the provisions of Article 108 and is 
implicitly prohibited by Article 105.</p>
<h3>SSD is too wide - exempt genuine homeowners</h3>
<p>SSD contains no exemption for owner-occupiers of their own homes, who might 
simply need to upgrade (due to family enlargement) or downgrade (due to 
financial circumstances, or to take out equity after an increase in prices) or 
sell due to job relocation. By extending SSD to 3 years, the Government will 
capture even more unintended victims. If your wage-earning spouse dies in an 
accident just after you have bought a home, and you can't afford to pay the 
mortgage, you now have a choice between losing 20% of its value (and possibly 
all of your equity) to SSD, or waiting for the bank to declare you in default 
and foreclose. If your employer asks you to relocate to the mainland soon after 
you have bought a home, you have a choice between losing 20% of its value to 
SSD, or having to lease out the home or leave it empty until the 3 years are 
expired. And if you bought after SSD was introduced and can't believe how much 
your home value has increased since then, you can't diversify your risk until 
the time expires. In essence, the Government has locked you in to your own home.</p>
<p>So even if you accept that property speculation is harmful to society, then 
you must ask whether SSD is accurately focussed, and whether it causes more 
collateral damage to unintended victims than it purports to fix. <strong>We 
submit that there should be an SSD exemption if at some point in the 365 days 
before the transaction, the vendor owned only one residential property and at 
all times in the period he did not own more than two.</strong> This would 
indicate that the vendor is selling his current or recent home. He might have 
already acquired a new home and therefore temporarily own two, with one to be 
sold. It would be easy to verify how many he owned at all times using data in 
the Land Registry. Exempting home-owners would free them to make choices based 
on their personal circumstances, not on whether they will incur SSD if they 
move. It would focus SSD more on the alleged speculative behaviour, and stop the 
dragnet approach.</p>
<p>The same exemption should be introduced for regular stamp duty for anyone who 
has no existing property, or is moving from one home to another. Why, if the 
government wants to improve affordability, does it slap up to 4.25% stamp duty 
on homes? It then makes mortgage interest tax-deductible, up to $100,000 per 
year for 15 years, and in his 
<a href="http://www.ceo.gov.hk/eng/pdf/manifesto.pdf" target="_blank">manifesto</a> 
(page 36, para 5), the Chief Executive said he would raise this to $150,000 per 
year for 20 years. At the highest
<a href="http://www.gov.hk/en/residents/taxes/taxfiling/taxrates/salariesrates.htm" target="_blank">
marginal tax rate</a> of 17%, this is worth 17% x $150,000 x 20 = $510,000 over 
20 years. Assuming a 3% discount rate, that has a net present value of about 
$379,000, equivalent to the 3.75% stamp duty on a home worth $10.1m. So the 
Government takes with one hand and returns, slowly, with the other, but only if 
you have a mortgage and a high enough income, and only if you don't move homes 
after the first purchase (or you will be paying N times stamp duty). <strong>
Surely it would be fairer to abolish both stamp duty and mortgage interest 
deduction</strong>.</p>
<p>Now we turn to BSD.</p>
<h3>BSD is unconstitutional</h3>
<p>Again, like SSD, BSD is not intended as a revenue-raising measure, but to 
target a specific group of purchasers, being everyone other than PRs, thereby 
favouring PRs. As noted above, BL 105 protects the rights of &quot;individuals and 
legal persons&quot; to the acquisition of property, including real estate. 
&quot;Individuals&quot; of course includes all humans, not just PRs, and &quot;legal persons&quot; 
includes companies. A discriminatory duty on non-PRs is implicitly unfair to 
them, and implies that the &quot;rights of individuals and legal persons&quot; are 
different depending on their immigration status and legal form. <strong>We do 
not think that the drafters of the Basic Law intended to allow different 
property rights 
for different people. The rights should be equal.</strong></p>
<p>It would be one thing to add 15% duty to all purchases by all buyers for the 
purpose of raising revenue under BL 108, but that is not the purpose of BSD. <strong>We 
submit that BSD falls outside BL 108 and is prohibited by the rights protected 
under BL 105.</strong></p>
<p class="regbox" id="update"><strong>Update 12-Feb-2013: We should add that Basic Law 
Article 25 states &quot;All Hong Kong residents shall be equal before the law.&quot; 
Discriminatory taxes between types of residents would therefore be 
unconstitutional.</strong></p>
<h3>BSD is discriminatory</h3>
<p>BSD is a discriminatory measure. It tells non-permanent residents, and 
prospective talented immigrants, that if they move to HK, they won't be able to 
buy a home for 7 years until they have become a permanent resident, unless they 
pay a 15% surcharge designed to deter them. It also imposes a surcharge on 
companies and other organisations that might want to buy staff quarters, placing 
them at a competitive disadvantage to well-established employers who already own 
staff-quarters. <strong>We submit that if BSD proceeds, then all residents with 
ID cards, PR or not, and all companies with business registrations in HK should 
be exempt. </strong>That would still leave a discriminatory law, but it would 
discriminate between non-residents and residents and allow companies with 
business registrations to do business, rather than the narrow PR-only approach.</p>
<p>In some ways, BSD will harm the very people it is intended to protect, by 
ensuring that more properties will be owned by PRs when the bubble bursts than 
if non-PR buyers were allowed to purchase. It is a message to non-PRs: &quot;keep 
out, we're having a party here, and you don't want to get our hangover&quot;. Perhaps 
the message should be &quot;BSD - Hong Kong hangovers for Hong Kong People&quot;.</p>
<p>Even if you accept that BSD is somehow protecting the market for PRs, rather 
than sucking them into the bubble, do we really need to charge it on high-value 
properties, which are not by any stretch of the imagination aimed at first-time 
buyers struggling to get onto the property ladder? What exactly is the purpose 
of that - is it a right of permanent residents to be able to buy a HK$50m flat, 
ahead of non-permanent residents? Or should we only charge BSD on homes below a 
certain price, thereby pushing non-PRs to buy high-end properties and leave the 
mass market for PRs?</p>
<h3>Serviced apartments</h3>
<p>BSD also prohibits investors from collaborating via companies to acquire, 
renovate and rent out apartments as a business. This will also heavily impact 
owner-operators of serviced apartments, who cannot acquire and rent out 
properties without paying BSD. <strong>We submit that if BSD proceeds and there 
is no exemption for local businesses, then there should at least be an exemption 
for the purchase of an entire multiple-dwelling building</strong>.</p>
<h3>Renovation industry</h3>
<p>BSD also prohibits companies and non-PRs from upgrading the housing stock by 
acquiring, renovating and selling old apartments. Not only will they pay 10-20% 
SSD on a resale, but they will also have to pay 15% on the purchase, a total of 
25-35%, plus regular stamp duty on the purchase. Prohibiting this industry is 
surely not in the public interest. Such apartments are their inventory, and they 
would pay profits tax on the sale (if a profit was made). BSD and the extension 
of SSD basically eliminate that sector.</p>
<h3>Redevelopment industry</h3>
<p>Under the <a href="http://www.hklii.hk/eng/hk/legis/ord/545/" target="_blank">
Land (Compulsory Sale for Redevelopment) Ordinance</a> (<strong>LCSRO</strong>), 
redevelopments of old buildings have often accomplished by assembling fractional 
ownership by gradual acquisition of units. A developer can acquire 80% or 90% (<a href="http://www.hklii.hk/eng/hk/legis/reg/545A/" target="_blank">depending</a> 
on the age, type and number) of the units, and then apply to trigger an auction 
of the entire site, which he may or may not win, but whoever wins will produce 
new property to supply the market.</p>
<p>The draft Bill includes a BSD refund scheme if a person redevelops a 
site within 6 years of completing the acquisition, but this is of no value if 
the person who triggers the auction does not win the auction. He will have paid 
BSD up front for at least 80% of the units and will never get it back, as he 
loses the site. Meanwhile the auction winner pays BSD itself, redevelops the 
site, and reclaims the BSD. In framing the rebate scheme, the Government makes 
an amazing presumption that only the person who triggers the auction will win it 
- which rather suggests that they don't expect the LCSRO to produce fair and 
open auctions.</p>
<p>Therefore, the proposed refund scheme does not work. No potential developer 
will set out to acquire units of a fragmented ownership, paying 15% BSD on each 
purchase, if they cannot be sure of getting it back. They might not even get to 
the 80% or 90% threshold, and the result would be that they own a bunch of 
expensively-acquired old apartments and never get the BSD back.</p>
<p>In short, BSD kills off the private redevelopment sector. That leaves the
<a href="../dbpub/articles.asp?p=16864" target="_blank">Urban Renewal Authority</a> (<strong>URA</strong>), 
a Government entity, to monopolise the redevelopment market, increasing 
Government intervention in the sector. The URA is insensitive to price (it pays 
the value of a 7-year-old flat, not a 50-year-old-flat, so that's well above 
market value), and any stamp duty it pays goes back to its owner, the 
Government.</p>
<p>In truth, once the LCSRO was passed, the URA, with its statutory powers of 
compulsory purchase, was redundant, because the private sector was then able to 
overcome the &quot;last man standing&quot; problem and proceed with redevelopments. The 
private redevelopment market was beginning to function, but the Government is 
taking that away with BSD and handing it back to the URA. The Government should 
abolish the URA and allow the private sector to function.</p>
<p>Under Schedule 3 of the LCSRO, the winner is obliged to redevelop the site 
within 6 years, so we see no point in requiring them to pay BSD either, because 
they will certainly get it back when the development completes, so it would just 
amount to an interest-free loan to the Government from the winning bidder, 
increasing the capital cost of redevelopment. This is a &quot;single lot&quot; purchase. 
We submit that <strong>if BSD proceeds, then winners of auctions under the LCSRO 
should be exempt</strong>, because they are contributing to the supply of new 
units and would get it back anyway. Even then, such auctions are only likely to 
be triggered when existing owners get together, rather than by risk-taking 
developers who would have to pay BSD without any certainty that they will reach 
the threshold for redevelopment.</p>
<p>Such an exemption would also put auctions of sites under the LCSRO on a level 
playing field with auctions and tenders of Government land (involving new 
leases), where no BSD is payable. Otherwise, <strong>BSD tilts the playing field 
away from redevelopment in favour of new land leases from the Government</strong>. 
In short, the Government is favouring its own land sales over private sector 
land from the LCSRO process. That is against the public interest, which calls 
for using existing sites to their full potential before consuming undeveloped 
land.</p>
<h3>Companies</h3>
<p>We agree with the Government that it would be impossible to devise a 
scheme which exempts companies owned by permanent residents (<strong>PRs</strong>) 
from BSD without creating loopholes. A company could be beneficially owned by a 
permanent resident today, but under a forward sale agreement, or with a 
put-option and call-option at the same exercise price over the shares, it could 
in effect be pre-sold to a foreign buyer, to be completed when the tax is 
abolished. Companies can also start out with 1 share owned by a permanent 
resident, buy the property, and then issue 999 shares to a non-PR, thereby 
effecting a change of 99.9% ownership. The remaining share could be converted 
into a deferred share with near-zero economic rights, making it 100% owned by 
the non-PR.</p>
<p>Of course, before the Government announced BSD, many of the higher-value 
properties were already owned by companies. I purchased my home through an 
offshore company in 2006 (paying 3.75% stamp duty at the time, or about 1 year's 
rent), and if I ever want to sell the company then I will be free to sell it to 
anyone I want, without either side paying stamp duty or BSD. The same is true 
for owners of whole residential buildings via companies. The buyer takes a risk 
of hidden liabilities in the company, but when the alternative is paying 19.25% 
in stamp duty (including the 4.25% regular duty) then it is a risk worth taking 
in most cases, particularly where there is a credible vendor and a warranty is 
given.</p>
<p>In the time between the first SSD announced on 19-Nov-2010 and the BSD 
announcement on 26-Oct-2012, we would expect that a higher proportion of property 
purchases have been structured via offshore companies, to provide that 
flexibility and avoid any risk of SSD. The apparent effect of the BSD and SSD 
announcements on transaction volumes is at least partly offset by the invisible 
transactions involving the sale of offshore companies which own property either 
directly or through a HK-incorporated subsidiary.</p>
<h3>Non-local buyers were already declining before BSD</h3>
<p>An inconvenient truth, from the Government's perspective, is on page 5 of 
the
<a href="http://www.legco.gov.hk/yr12-13/english/panels/hg/papers/fahg1102-thb201210-e.pdf" target="_blank">
briefing paper</a> to LegCo dated October 2012. This reveals that &quot;non-local buyers&quot; 
as a percentage of residential transactions were 4.5% in 2010, 6.5% in 2011 and
<strong>back down to 4.5% in the first 9 months of 2012, before BSD was announced</strong>. This 
is what the Government called a &quot;general uptrend&quot;. It is nothing of the sort, 
merely an increase followed by an identical decrease. The slowdown of the 
mainland economy in 2012, the tightening of mortgage loan ratios, and the 
elevated prices were already lessening the demand. Even so, 95.5% of 
transactions in the first 9 months of 2012 were implicitly with local buyers.</p>
<p>The current Chief Executive, who is himself a real estate expert, was quoted 
in a
<a href="http://www.info.gov.hk/gia/general/201206/19/P201206190646.htm" target="_blank">
Government press release</a> on 19-Jun-2012:</p>
<blockquote>&quot;He said that although non-Hong Kong residents are 
still coming to the city to purchase properties, they are not doing so in 
numbers that affect resident Hong Kong buyers.&quot;</blockquote>
<p>So why impose BSD then, and why target residents who are not PRs? Either his 
expert view 11 days before he took office has changed, or BSD is purely a 
populist move which contradicts his expert view. </p>
<h3>Decision without proper basis</h3>
<p>On 1-Nov-2012 we asked the Government by e-mail what they meant by &quot;non-local&quot; buyers in their 
statistical analysis. The spokesman's response on 6-Nov-2012 was:</p>
<blockquote>&quot;Individuals with no Hong Kong Identity Card number and 
companies which are not registered under the Business Registration Ordinance 
(Cap 310) were taken as non-local buyers... The statistics therein were compiled 
basing on the information provided in the stamping requests received by Stamp 
Office.&quot;</blockquote>
<p>So &quot;local buyers&quot; does include residents with non-permanent ID cards. But the 
BSD proposal discriminates between residents who are permanent and non-permanent 
(not yet here for 7 years). The Government has said that it intends to 
prioritise those residents who have &quot;made a commitment&quot; to HK. What could be a 
greater commitment than buying a home, and paying the regular stamp duty which 
is equivalent to a year's rent? Surely anyone who does that doesn't plan on 
leaving soon. Does it really matter if you haven't been here 7 years?</p>
<p>For what it is worth, we asked the Government whether they had even 
bothered to determine, by matching buyer's ID numbers with the immigration 
department's database, what proportion of the ID card holders were PRs and not 
PRs. 
It would have been a relatively simple exercise, particularly on a sample basis 
rather than examining all transactions, and you would think that this data was 
available before they decided to exempt only PRs and charge other residents. The spokesman's answer on 
14-Nov-2012:</p>
<blockquote>&quot;The Government has not conducted a matching of the records 
between the government departments for the purpose of deriving the number of 
residential properties purchased by permanent residents of Hong Kong.&quot;</blockquote>
<p><strong>So they don't actually know how many buyers were PRs, and how many 
were residents but not PRs. </strong>It is quite clear that this discriminatory policy was launched 
without even having supporting data. It is a policy without foundation, unless 
you count pandering to xenophobic sentiment as a sound basis for policy-making. 
Keep in mind that many of the non-permanent residents today will be permanent 
residents with votes in 2016 and 2017. They will remember this policy.</p>
<p>I shall be pleased to attend the Bills Committee meeting at 09:00 on 
18-Feb-2013, and in the meantime I am happy to discuss this with any of you 
separately.</p>
<p>David Webb<br>Founder, Webb-site.com</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=107">Buyer's Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=187">Special Stamp Duty</a></li>
				
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