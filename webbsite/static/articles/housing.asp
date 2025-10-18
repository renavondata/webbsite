
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	text-decoration: underline;
}
</style>
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

<script type="text/javascript">document.title="HK Government invasion of the housing market";</script>

	<div class="summary">HK Chief Executive Carrie Lam has ended her first year with a new set of interventions, building on the crumbling foundations of her predecessors. It's time for a major policy rethink. A government's role is to ensure that people have a home, not that they own one. And the government doesn't need to own homes either.</div>

<h2 class="center">HK Government invasion of the housing market<br>
<span class="headlinedate">2 July 2018</span></h2>
<p>Concluding her first year in office, HK Chief Executive 
<a href="../dbpub/natarts.asp?p=40475">Carrie Lam Cheng Yuet Ngor</a>
<a href="https://www.news.gov.hk/eng/2018/06/20180629/20180629_163630_905.html" target="_blank">announced</a> 
a raft of new interventions in the housing market which build on a crumbling 
foundation of mistakes by her predecessors and take HK further away from free-market principles.</p>
<h3>The Government's obligation</h3>
<p>The government of any society has a role to play in ensuring that its people 
have access to housing, other basic necessities and a social safety net. 
These are covered in Article 25 of the UN's
<a href="http://www.un.org/en/universal-declaration-human-rights/" target="_blank">
Universal Declaration of Human Rights</a> (<strong>UDHR</strong>):</p>
<blockquote>"Everyone has the right to a standard of living adequate for the 
health and well-being of himself and of his family, including food, clothing, 
housing and medical care and necessary social services, and the right to 
security in the event of unemployment, sickness, disability, widowhood, old age 
or other lack of livelihood in circumstances beyond his control."</blockquote>
<h3>The wrong and outdated policy</h3>
<p>The "CE's Housing Policy" is stated on page 3 of the annex of a
<a href="https://www.legco.gov.hk/yr17-18/english/panels/hg/papers/devhgcb1-1210-1-e.pdf" target="_blank">
paper</a> tabled in the Legislative Council on Friday (29-Jun-2018). The first 
paragraph of her policy is consistent with the UDHR:</p>
<blockquote>"housing is not a simple commodity. It is one of the pillars of a 
caring and inclusive society. While respecting free market, the Government has 
an indispensable role to play in providing Hong Kong people with adequate 
accommodation;"</blockquote>
<p>But it is the second paragraph that causes problems:</p>
<blockquote>
	"we will focus on home ownership, and will strive to build a housing ladder 
	to rekindle the home ownership hopes of families in different income 
	brackets;"</blockquote>
<p>It is a government's role to ensure that people <em>have</em> a home, not 
that they <em>own</em> one. If the Government really respects free markets as 
she claims in the first paragraph, then she would appreciate this important 
distinction. Whether a person, or a family (and her policy's emphasis on 
families is irrelevant) owns or rents a home should be of no concern to 
government, as long as that person or family has adequate housing.</p>
<p>Home ownership is not a human right. In fulfilling the government's 
role, it is sufficient to provide means-tested financial support for people to 
rent adequate housing if they cannot afford to do so. There is no need to go 
beyond that by subsidising home ownership, any more than there is to subsidise 
share-buying or car ownership. If people are fortunate enough to be able to save 
up the equity to own property and hand it on to their children when they die, 
then good for them, but they shouldn't expect taxpayer support to do so. In providing rental 
support (and sufficient land supply to the market, which is beyond the scope of 
this article), a government can fulfill its 
obligation to ensure that nobody is homeless unless they choose to be.</p>
<h3>Public Rental Vouchers, not Public Rental Housing</h3>
<p>In providing rental subsidy, a government does not need to be on the 
other side of the tenancy as a housing landlord. The HK Government persists with 
an outdated policy, introduced in an emergency in the 1950s, of building, owning 
and providing "Public Rental Housing" (<strong>PRH</strong>) at deeply discounted rents, providing the 
subsidy via the discount. This is a highly inefficient way to provide the 
subsidy because, when households shrink as children grow up and leave, or 
spouses separate or die, the remaining members tend to stay in the same unit, 
paying little or nothing for rental, resulting in underused properties. 
Downsizing to a smaller unit would mean receiving a smaller subsidy.</p>
<p>In the 10 years to 31-Mar-2017, the stock of PRH flats increased by 
91,548 (13.5%) from 677,804 to 769,352, but the "authorised population" in those 
units only increased by 106,573 (5.4%), from 1,987,900 to 2,094,473 
(source: Housing Authority
<a href="http://www.housingauthority.gov.hk/en/about-us/publications-and-statistics/publication-archive/index.html" target="_blank">
annual reports</a>). So each additional unit has housed on average just 1.16 
people and the average PRH household size has dropped from 2.93 to 2.72.</p>
<p>If the Government simply provided a voucher for rental subsidy based on a 
household's size, income and assets, allowing the household to rent a home from 
the private sector (including the privatisation of all existing PRH units), then when the household shrinks, so would the voucher, and 
there would be an incentive to downsize.</p>
<p>This artificial segregation between "public housing" and "private housing" 
results in several things:</p>
<ul>
	<li>Endless debate about how much land should be allocated for "public 
	housing" relative to "private housing", with a perception that the 
	allocation favours either rich people or poor people, rather than just a 
	debate about how much land should be allocated for "housing";</li>
	<li>Poor people living in designated ghettos of "public housing", with 
	resulting social problems, rather than mixing with the general community;</li>
	<li>It is politically difficult to evict tenants who have moved up the 
	income scale, because the Government is also their landlord, whereas a 
	means-tested rental voucher could simply be withdrawn or reduced when the 
	recipient's income level rises. So the Government doesn't test incomes for 
	10 years after occupation of PRH, and after that, under the "<a href="https://www.housingauthority.gov.hk/en/public-housing/tenancy-matters/income-and-asset-declaration/index.html" target="_blank">Well-off 
	Tenants Policies</a>", tenants with incomes of 3-5 times the limit only pay 
	double-rent, which is still far below market rent levels. It is only when 
	their income reaches 5 times the PRH limit (or assets 100x) that they must 
	vacate. And if you make it to 60, there are no further tests.</li>
</ul>
<p>Indeed, in her latest proposals, the CE has announced the diversion of land 
from private to public housing for 10,600 units at Anderson Road Quarry and Kai 
Tak, thereby reducing the supply of land for private housing and increasing 
the Government's footprint in the housing market. </p>
<p>The Government should break the habits of the past and replace "public 
housing" with "Public Rental Vouchers" (<strong>PRV</strong>), provided based on 
regular declarations of income, assets and household size of the recipients. All 
the existing PRH stock could be converted into Real Estate Investment Trusts (<strong>REITs</strong>) 
and sold on the stock market, and every tenant who qualifies could be given a 
voucher equal to the difference between market rents and what they have 
previously been paying. They would be free to use the voucher to rent their current 
unit, or take the voucher and rent a unit anywhere else in HK, providing greater 
mobility. The privatised owners would similarly be free to rent the properties 
to anyone, with or without a voucher. There would no longer be "public housing", 
and the Government would no longer have the conflict of interests between being 
both a landlord and a provider of subsidies.</p>
<h3>No ownership subsidies</h3>
<p>Carrie Lam has embarked on yet another layer of home-ownership subsidies, for 
households too rich for the Home Ownership Scheme (which has an income limit of 
HK$57k per month), which she calls the "Starter Home". Eligible households 
can have incomes up to 130% of the HOS limit, or about $74.1k for a household 
with 2 or more persons. As a reality check, look at the latest (Mar-2018)
<a href="https://www.statistics.gov.hk/pub/B10500012018QQ01B0100.pdf" target="_blank">
Quarterly General Household Survey</a> by the Census and Statistics Department. 
This shows (PDF p112) that only 14.3% of economically active households had 
incomes of $80k or more, with a further 9.7% in the range of $60,000-79,999. So 
her proposal would qualify some 80% of economically active households for some 
kind of ownership subsidy, if they haven't already owned a home. If that isn't 
interventionist, then what is? And yes, if you have made the mistake of 
previously owning a home, then you won't qualify for the new lottery, regardless 
of income.</p>
<p>She also announced larger discounts for Home Ownership Scheme sales. The 
reality is that every time a Home Ownership Scheme goes on sale, it is massively 
over-subscribed by people who do qualify, under existing thresholds, to buy the 
units at the existing discount of 30% below market price. There is clearly no 
affordability problem for these applicants, otherwise they would not be buying 
and would not get mortgages - so by lowering the prices further, she will just 
increase the application ratio and the "lottery winner" effect, as more people 
on lower incomes will qualify. For sure, the market prices and even the 30% 
discounted prices may currently or retrospectively look ridiculous, but they are 
plainly <span class="auto-style1">not</span> unaffordable to those who apply.</p>
<p>There is simply no need for any of these schemes. Step back and let the free 
market function. Focus on expanding land supply, not on layer after layer of 
market-distorting subsidies that favour the lucky few.</p>
<h3>Land lease reform</h3>
<p>Of course, when we talk about home ownership (or any other kind of real 
estate ownership) in HK, what we really mean is 
"leasehold ownership". The Government leases land to the private sector on 
50-year land leases, and a home buyer doesn't get the freehold, but a fractional 
interest in the land lease and the buildings upon it for the remainder of the 
lease. That's a whole different subject - the fact that many leaseholds in HK 
expire on 30-Jun-2047, less than 29 years from today. We've covered the need for 
land lease reforms in <a href="leases2.asp">our articles of 2010</a>. 
The nearer we get to 2047, the harder it will be for the government to change 
owners' expectations of a free renewal from whomever is governing Hong Kong at 
that time.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11585">HONG KONG HOUSING AUTHORITY (THE)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=24">Social welfare</a></li>
				
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