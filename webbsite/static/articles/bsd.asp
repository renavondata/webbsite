
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

<script type="text/javascript">document.title="Some-Buyer's Stamp Duty";</script>

	<div class="summary">We examine HK's proposed discriminatory stamp duty on companies and non-permanent residents who buy residential property, its questionable constitutionality, its negative impacts on social harmony and the redevelopment market, and the proposed SSD 2.0.</div>

<h2 class="center">Some-Buyer's Stamp Duty<br>
<span class="headlinedate">30 October 2012</span></h2>
<p>First it was the &quot;<a href="HK4HK.asp">HK land for HK Permanent 
Residents</a>&quot; policy on new residential land leases. Now the Government is
<a href="http://www.info.gov.hk/gia/general/201210/26/P201210260646.htm" target="_blank">
proposing</a> a discriminatory form of taxation - a &quot;Buyer's Stamp Duty&quot; of 15% 
on any person who is not a Permanent Resident (<strong>PR</strong>) and buys a 
home in HK. That is a status that most new arrivals can only get after 7 years 
of residency.</p>
<p>This marks a dangerous precedent - for the first time, the amount of tax you 
pay depends on your immigration status in Hong Kong. You can come here to work, 
and you must then pay salaries tax, but you can't spend your earnings on a home 
without paying more tax than the permanent resident sitting next to you. If the 
proposal is passed, then it lays the path for other possible discriminatory 
taxes - for example, the Government might propose that non-Permanent Residents 
pay salaries tax at higher rates, claiming that they are &quot;taking jobs&quot; from PRs, 
or they might charge higher stamp duty on tenancies with non-PR tenants, because 
they are putting upward pressure on rents for apartments that PRs might rent.</p>
<p>This is at odds with the often-stated Government goal of social harmony and 
its calls for
<a href="http://www.isd.gov.hk/eng/tvapi/newarrival_e.html" target="_blank">
Acceptance of New Arrivals</a> in HK. The video opens with &quot;No matter where we 
came from, or how long we've been here, we are all part of the Hong Kong 
family&quot;. Yeah, right. By telling PRs that they are special, the Government 
strengthens the &quot;them and us&quot; mentality. And yet, if you are a &quot;foreigner&quot; like 
Google, and want 2.7 hectares of cheap land for a data centre,
<a href="http://www.google.com/about/datacenters/locations/hong-kong/" target="_blank">
creating fewer than 10 permanent jobs per hectare</a> (25 in all), then no 
problem! At a plot ratio of 5, a site of that area could produce&nbsp; 135,000 
sq.m. (1.45m sq ft) of floor area, or about 2,400 homes. Google paid about 
HK$102.6m for the site, assuming they sealed the deal after
<a href="../codocs/HKSTPlandPremiumTable110824.pdf">premiums went up</a> on 
24-Aug-2011. A residential site of that size in Tseung Kwan O would cost about $4k per sq ft of 
floor area, or around HK$5,800m. Have we got our priorities right? Anyone for a 
new industrial estate, Cyberport, or Science Park?</p>
<p>Another possible discriminatory tax would be a selective sales tax on all 
things, not just apartments, to deter mainlanders from crowding into our shops 
and buying things to take home. We could have a sales tax for which PRs (on 
production of their ID card) are exempt, but non-permanent residents (who have 
no vote) and non-ID card holders pay, let's say (picking a number out of thin 
air), 15%?</p>
<h3>Who are they trying to protect?</h3>
<p>Ironically, by erecting a prohibitive barrier to home ownership by non-PRs, 
the new tax will ensure that when the bubble bursts, fewer non-permanent 
residents, and more PRs, will lose money. It's the Government's way of saying to 
non-PRs, &quot;beware of our property market&quot; while encouraging locals to believe 
that the market is &quot;healthy and stable&quot; for them. But surely buying property is 
a mistake that anyone should be allowed to make for themselves. Meanwhile, if 
you are a PR who owns property, the only real way out is now to sell to another 
PR.</p>
<h3>The Basic Law</h3>
<p>Through BSD, the Government proposes, in effect, to prohibit anyone 
other than a PR from buying your property. Shouldn't you be free to sell to 
whomever you like? After all, it is your property, isn't it? Article 105 of the 
Basic Law says in part:</p>
<blockquote>&quot;The [HKSAR] shall, in accordance with law, protect the right 
of individuals and legal persons to the <u>acquisition</u>, 
use, <u>disposal</u> and inheritance of property...&quot; 
(emphasis added)</blockquote>
<p>That is &quot;property&quot; in the legal sense of the word, including immovable 
property, i.e. real estate. The &quot;legal persons&quot; phrase is in there to be 
specific that the Basic Law protects not just individuals (humans), but also 
companies, partnerships and other organisations, and it doesn't say &quot;HK passport 
holders&quot;, or even &quot;permanent residents&quot;, it says &quot;individuals&quot;. Yes, it says &quot;in 
accordance with law&quot; (meaning common law and local legislation), but when you 
start making unequal laws that financially favour one class of individual over 
another based on their immigration status, and favouring that class over &quot;legal 
persons&quot;, then you are on very shaky ground.</p>
<p>The Government may argue that this is not a prohibition, merely a financial 
deterrent - well alright then, at what level of duty does it become at least 
partially prohibitive? How about 20%, 100%, or 1,000%? The Government may also 
argue that BSD falls within its power of taxation under Article 108 of the Basic 
Law. That says:</p>
<blockquote>&quot;The [HKSAR] shall...enact laws on its own concerning types of 
taxes, tax rates, tax reductions, allowances and exemptions, and other matters 
of taxation.&quot;</blockquote>
<p>But there is a thin line between taxation and penalty. Penalties are for the 
courts to impose, subject to a fair trial, and a penalty which restricts a Basic 
Law right would surely be unconstitutional. It would be one thing to deter all 
purchases, as a matter of (ill-conceived) policy, by charging very high rates of stamp duty (we 
already do some of that, by charging up to 4.25% on all residential 
transactions, a measure introduced in the 2010 budget). But to do this only when 
the buyer is a non-permanent resident or a company, raising the charge to 
19.25%, seems a lot more like a penalty than a legitimate form of taxation. Is 
there really a policy objective that can turn this into a legitimate tax, or 
just a political desire to be popular with voters, who are all PRs?</p>
<h3>Bubble? What bubble?</h3>
<p>As usual, the Government speaks of &quot;maintaining a healthy, stable property 
market&quot; - but to maintain something, it has to be there already. If it is 
healthy and stable, then why do they think these measures are needed? They 
cannot bring themselves to admit that we are in a bubble. Instead they say &quot;the 
risk of a property bubble forming is increasing&quot;. In fact, the phrases 
&quot;healthy and stable&quot; and &quot;risk of a 
property bubble&quot; in Government press releases goes back at least 32 months to 
the
<a href="http://www.info.gov.hk/gia/general/201002/24/P201002240110.htm" target="_blank">
budget speech</a> of 24-Feb-2010, and
<a href="http://hk.centadata.com/cci/cci_e.htm" target="_blank">prices are up</a> 
about 40-50% since then.</p>
<p>The main cause of this is record low, and persistently low, interest rates, 
not demand from foreigners (for which, read, &quot;mainlanders&quot;). As Financial 
Secretary John Tsang said on Friday, the proportion of residential property 
transactions by &quot;non-local&quot; buyers was only <strong>6.5%</strong> in 2011. The 
current Chief Executive, C Y Leung, was quoted in a
<a href="http://www.info.gov.hk/gia/general/201206/19/P201206190646.htm" target="_blank">
Government press release</a> on 19-Jun-2012 (only 4 months ago):</p>
<blockquote><strong>&quot;He said that although non-Hong Kong residents are 
still coming to the city to purchase properties, they are not doing so in 
numbers that affect resident Hong Kong buyers.&quot;</strong></blockquote>
<p>If anything, there has been a downtrend in such activity since the 
mainland economy began to cool. So the Government has failed to demonstrate any 
policy objective for this taxation. And note that the original plans in Mr 
Leung's manifesto related to HK land for all residents, not just PRs - but then 
he remembered that only PRs have a vote. </p>
<p>Waving his hands in the general direction of the sky, Mr Tsang said on 
Friday:</p>
<blockquote>&quot;this [BSD] is an extraordinary measure introduced under 
exceptional circumstances. We shall consider withdrawing this measure when the 
market regains its balance&quot;</blockquote>
<p>&quot;Regains its balance&quot; - what on earth does that mean? When the market has 
fallen enough? When it stops going up? When it stops going down? How can a 
market be imbalanced and yet &quot;healthy and stable&quot;? In economic terms, the market 
is always &quot;balanced&quot; at a price which reflects supply and demand - so he can 
only mean that he wants to reduce demand and shift the price downwards. </p>
<h3>Killing the redevelopment market</h3>
<p>If BSD takes effect, or until LegCo rejects the necessary legislation, 
redevelopment of residential buildings (other than by existing owners of whole 
buildings) will grind to a halt, because companies who would normally buy up old 
apartments and consolidate them for redevelopment will now face a prohibitive 
15% purchase tax. That is bound to have a negative impact on supply in about 3 
years' time, offsetting some of the supply increases that the Government has 
introduced. Perhaps the Government will seek to introduce a BSD rebate scheme 
for redevelopers - but that would be controversial in itself. How do you define 
a redeveloper? How quickly must they redevelop a site to qualify for BSD 
exemption or rebate? </p>
<p>Even if a rebate scheme existed, a developer embarking on a consolidation 
project would have to pay the BSD on each purchase and take the risk that it 
cannot get 100% ownership. Then the developer would have paid all that BSD 
without being able to recover it. The developer might get to the 80% or 90% 
threshold at which (depending on the building age) they can trigger an auction 
of the site under the
<a href="http://www.hklii.hk/eng/hk/legis/ord/545/index.html" target="_blank">Land (Compulsory 
Sale for Redevelopment) Ordinance</a>, but then they would take the risk that a 
second developer would win the auction and the first one would have no rebate of 
the BSD. On the other hand, if there is no BSD exemption for bidders in such an 
auction, then third-party bidders would be hopelessly uncompetitive unless they 
could get credit for the BSD already paid by the majority owner. It would result 
in single-bid auctions by the majority owner, disadvantaging the minority owners 
in the auction.</p>
<p>All of this would leave the Government's
<a href="../dbpub/orgdata.asp?p=16864">Urban Renewal Authority</a> in an even 
more dominant position in the redevelopment market - not only because of its 
existing statutory powers of compulsory purchase (which are not subject to any 
ownership threshold) but because any stamp duty it has to pay to buy out owners 
of old buildings goes straight back to the URA's owner, the Government, so the 
URA in essence is exempt from stamp duty. This takes the redevelopment market 
even further away from free-market principles.</p>
<h3>SSD 2.0</h3>
<p>We won't spend much time repeating our criticism of Special Stamp Duty (<strong>SSD</strong>). 
It is <a href="ssd2.asp">unconstitutional</a> because it penalises 
owners who sell their properties within a certain time frame, in other words, 
for exercising their right of disposition of property under Basic Law Article 
105, and it doesn't fall within Article 108 because it is not a legitimate form 
of taxation. It is not a legitimate tax because its stated purpose is to inhibit 
a form of behaviour without demonstrating that this behaviour harms society 
(unlike, say, the public cost of treating cigarette-related illnesses and the 
associated lost productivity), and because even if it could be shown that 
investing or trading in properties is bad (rather than good) for society, the 
tax is unfocussed and hits too many people who could not by any stretch be 
called speculators.</p>
<p>Now, by moving the cut-off from 2 years to 3 years, and doubling the rate 
from 5% to 10% for resales after 1 year, the SSD is bound to capture even more 
unintended victims. How many people, other than civil servants who implement 
such policies, could be sure of having an income in 3 years time, with which to 
pay their mortgage? Watch as the law catches more people who have only ever 
owned one home at a time, but now need to sell, for whatever reason - job 
relocation, divorce, death of an income-producing spouse or just the knowledge 
(when it happens) that the market is heading down and they are headed for 
negative equity. There is an SSD exemption for bankruptcy and foreclosure - but 
that's a <a href="http://en.wikipedia.org/wiki/Catch-22" target="_blank">
Catch-22</a>. Either take the SSD hit, or wait for the bank to foreclose - 
either way, the homeowner faces financial ruin.</p>
<p>And by the way, even though Mr Tsang says that &quot;resale within 12 months has 
virtually disappeared&quot;, he is increasing the rates on that from 15% to 20% (on 
resales within 6 months) and from 10% to 15% (within 6-12 months). Like putting 
a few more bullets in the corpse. What does he expect to achieve from this, 
other than looking tough? He also cites statistics on resales within 12-24 
months, noting that they have increased from 83 cases in Mar-2012 to 218 cases 
in Sep-2012. That's about 0.02%, or 1 in 5,000 private-sector homes per month. 
Hardly a menace to society.</p>
<p>SSD 2.0 only applies to transactions after last Friday. We'll bet him a can 
of Pringles that if he gets legislative approval for SSD 2.0 then he (or his 
successor) will have to repeal it within the next 3 years. </p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=107">Buyer's Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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