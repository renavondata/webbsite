
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

<script type="text/javascript">document.title="Fixing the Small House Policy";</script>

	<div class="summary">We look at a recent court case which again highlights the rampant abuse of the Small House Policy for the New Territories. We propose a return to the original policy intent, creating an internal market for indigenous housing, together with a voluntary, market-based scheme to surrender the claims of indigenous men and their under-age and unborn male descendants.</div>

<h2 class="center">Fixing the Small House Policy<br>
<span class="headlinedate">9 September 2014</span></h2>
<p>A court judgment last week shines a spotlight again on the small-house game 
played by men from the New Territories of HK - not just any men, but those 
descended down the male line from a person who lived there in 1898 (note that in 
theory this includes descendants in the male line of men whose mothers lived 
there in 1898 even if their fathers didn't, but they usually did). This is known 
as the <a href="http://www.landsd.gov.hk/en/legco/house.htm" target="_blank">
Small House Policy</a> (<strong>SHP</strong>), although the term is something of 
a misnomer, because it allows a 3-storey house (27 ft. high) covering 700 sq. 
ft. of land, or 2100 sq. ft. overall, about 3 times as large as the average HK 
dwelling, and that's assuming you don't put an illegal structure on top or 
underneath it. Women, of course, have no such rights, so an
<a href="http://www.hklii.hk/eng/hk/legis/ord/480/sch5.html" target="_blank">
exception</a> had to be included in the Sex Discrimination Ordinance.</p>
<p>The roots of this policy date back to the 99-year lease from imperial China 
to the UK of the &quot;New Territories&quot; (everything except HK Island, Stonecutters 
Island and the Kowloon peninsula south of Boundary Street). The lease ran until 
the end of 30-Jun-1997. The notion is that the change of sovereignty in 1898 
left villagers with a new master, and that they should be allowed to continue 
building homes on the village land they occupied.</p>
<a href="http://en.wikipedia.org/wiki/File:Hkcolonyprocess-EN.png" target="_blank">
<img class="center" alt="HK treaty map" src="../images/HKtreatyMap.png"></a>
<p>According to the Legislative Council
<a href="http://sc.legco.gov.hk/sc/www.legco.gov.hk/yr72-73/h721129.pdf" target="_blank">
Hansard of 29-Nov-1972</a> (p189), in 1971 the Heung Yee Kuk (<strong>HYK</strong>), 
which in essence is the top organisation of indigenous villagers, asked the 
Government to review the policy and practice on the control of village houses in 
the New Territories. Agreement in principle (presumably, with the HYK) was 
reached in March 1972 and the SHP came into effect in December 1972. 
Politically, when it comes to the New Territories, the Government answers to the 
HYK, not the other way around.</p>
<p>According to the 1972 Hansard, at the time, only 7% of dwellings in the rural 
NT (presumably excluding the parts of Kowloon above Boundary Street) were what 
the Government called &quot;permanent houses and flats&quot;, with 35% traditional village 
houses, 30% lawful temporary structures and 28% unlawful temporary structures. 
The massive new towns we see today had barely started. As Denis Bray, then 
District Commissioner, New Territories, said:</p>
<blockquote>&quot;I do not see these measures as anything more than 
interim measures which will complement the major job of producing a 
comprehensive development plan for the New Territories&quot;.</blockquote>
<p>42 years later, the SHP (after modifications) is still with us. Notably, the 
Hansard only talks of 2-storey buildings; at some point later, 3-storey 
buildings were allowed, increasing the benefit by 50%.</p>
<p>In the year to 31-Mar-2014,
<a href="http://gia.info.gov.hk/general/201405/07/P201405070468_0468_127885.pdf" target="_blank">
Government figures show</a> that 1048 Small Houses were completed, and the pace 
has stepped up from a 12-year low of 721 in 2004-5. In the latest year, 498 
houses had the &quot;restriction on alienation&quot; removed, for a premium of $651m, or 
$1.307m per house, or $622 per gross sq. ft.. This restriction only applies to 
houses built on private land for 5 years after completion, or perpetually to 
houses built on land granted by the Government by Private Treaty. To us this 
premium looks remarkably low. In the case of private land it is probably dodged 
anyway with the use of deferred-sale agreements which push the transaction 
beyond the 5-year period.</p>
<h3>Illegal transactions are unenforceable</h3>
<p>Now, back to that court case:
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=94760&amp;currpage=T" target="_blank">
Chan Yau v Calvin Chan &amp; Joe Chan Cho Wing, HCA 666/2007</a>. The plaintiff Chan 
Yau sued the defendants for breach of contract from their agreement to develop a 
village house in Tai Po. The defendants argued that even if such an agreement 
existed, it was unenforceable on the grounds of illegality.</p>
<p>According to the judgment, Chan Yau had, at least since 1988, been in 
property development and real estate agency through Sweet Home Properties, which 
operated several branches in Tai Po. The defendants, who are half-brothers, are 
indigenous villagers of <a href="https://goo.gl/maps/7VBtz" target="_blank">Ha 
Wong Yi Au, Tai Po</a>. The plaintiff shares a distant common ancestor with the 
defendants (<a href="http://en.wikipedia.org/wiki/Most_recent_common_ancestor" target="_blank">don't 
we all</a>), but does not regard them as relatives. Calvin Chan inherited some 
land from his granddad in 1992, which already had a house on it, but also 
included some vacant land, which he carved out to be developed in the name of 
Joe Chan, his half-brother, who had not yet claimed his &quot;right&quot; to build a house 
under the SHP. Joe held the land as nominee for Calvin - that is, he became the 
registered owner but not the beneficial owner. The three men entered into three 
agreements in Nov-Dec-1997, which provided that Joe would get HK$300k for 
selling his &quot;right&quot;, Calvin would get HK$400k for providing the land, and then 
Chan Yau and Calvin would jointly finance and share the development. 
Independently of this, Calvin also claimed his SHP &quot;right&quot; on a separate piece 
of land in 1996.</p>
<p>However, in 2000, Chan Yau and Calvin decided they could squeeze an extra 
house into the lot if they split it into two pieces, so in a fourth agreement, 
they agreed to split it into about 145 sq. m. (1561 sq. ft., presumably 
including a garden) and 50 sq. m. (538 sq. ft.). The second piece wasn't big 
enough for a house, so they successfully applied to buy some adjacent Government 
land to enlarge it to 700 sq. ft., which was finally approved in 2005, which 
apparently only cost HK$7,920 in land premium. They agreed that Chan Yau would 
own the first site (Lot 660 SERP) and would pay Calvin HK$200k for agreeing to 
split the site. In 2006, Chan Yau and Calvin began disputing whether the second 
house and site (Lot 745) was to be jointly developed or whether the old 
agreements were scrapped, with Calvin developing the second site alone.</p>
<p>Judge <a href="../dbpub/positions.asp?p=31612">Godfrey Lam Wan Ho</a> 
concluded that the 2000 agreement meant that the joint development enshrined in 
the 1997 agreements would apply to the second site, accepting Chan Yau's version 
of the facts. However, he then concluded that because all three parties knew 
that the scheme involved Joe Chan making a false declaration to the Government 
that he was the &quot;sole owner&quot; of the second site, in order to get Government 
approval for the house, the contracts were unenforceable on the grounds of 
illegality. He also ruled that Chan Yau and Calvin Chan were <em>in pari delicto</em> 
(love the Latin), meaning they were equally to blame for engaging in the 
transaction, and therefor Chan Yau could not have his money back from Calvin.</p>
<p>The civil finding of an illegal declaration to Government could open Joe up 
to criminal charges and the others to conspiracy to put him up to it, so 
pleading that the transaction was illegal was an interesting defence. Meanwhile, 
on 13-Nov-2013, Joe sued Calvin claiming that Joe owned Lot 745 and had paid 
Calvin HK$270,000 for it, in a separate case, HCA 2163/2013, which is ongoing.</p>
<h3>Rampant abuse</h3>
<p>This and other similar cases have highlighted the rampant abuse of the 
original intent of the SHP, which was to provide housing for indigenous 
villagers, not to allow them to just monetize what they now regard as &quot;rights&quot;. 
The policy was defective from the start, because it assumed that every new male 
descendant would need a new patch of land and house, not just re-using their 
father's or grandfather's house when he died, even if they did inherit it, as 
Calvin did. That flaw, plus the much higher birth rates of the past, led to a 
proliferation of eligible men (some of whom live overseas), estimated by HYK in 
2002 to reach 240,000.</p>
<p>Another issue with the policy is that the Government does not keep a register 
of eligible men (perhaps it has no register of the villagers in 1898, although 
it should have birth registry records from some point since then), but instead 
requires a declaration, signed by the indigenous &quot;Village Representative&quot; (read: 
chieftain) or by a Chairman of Vice Chairman of the relevant Rural Committee, 
certifying that the applicant is an indigenous villager. Currently,
<a href="http://www.eac.gov.hk/pdf/village/en/03_Chapter%201.pdf" target="_blank">
there are</a> 588
<a href="http://www.hklii.hk/eng/hk/legis/ord/576/sch2.html" target="_blank">
Indigenous Villages</a> (plus another 32 villages which are combined into 15
<a href="http://www.hklii.hk/eng/hk/legis/ord/576/sch3.html" target="_blank">
Composite Indigenous Villages</a>). They elect 789 Indigenous Inhabitant 
Representatives to 27 Rural Committees. The Chairman and Vice-Chairman of each 
committee is automatically a council member of the HYK. The Chairman of each 
committee also automatically becomes a District Councilor. The
<a href="http://www.had.gov.hk/rre/eng/electors/index.html" target="_blank">
electors</a> are only indigenous men (down the male line from 1898) and their 
spouses or surviving spouses (spouse of course means wife, given that in HK men 
cannot marry men).</p>
<p>Readers can imagine the intricacies of getting that signature from the 
village chief confirming your &quot;right&quot; to a windfall. Did I know your father and 
grandfather? Hmmm, let me think. Show me some evidence, preferably printed on 
small orange bits of paper the size of bank notes or shares in your development 
company. We're not saying that happens in every case, but the structure invites 
corruption.</p>
<h3>A market-based solution</h3>
<p>No politician in HK seems willing to take on the HYK and its vested 
interests. Chief Secretary (then Development Secretary) Carrie Lam Cheng Yuet 
Ngor briefly
<a href="http://www.scmp.com/print/article/1003884/end-small-house-policy-says-lam" target="_blank">
floated the idea</a> of terminating claims for men born after 30-Jun-2029 (i.e. 
they will reach 18 after what we call the &quot;Second Handover&quot; in 2047), but she 
quickly
<a href="http://www.chinadailyasia.com/news/2012-06/16/content_114626.html" target="_blank">
reversed</a>, using that old &quot;personal views&quot; excuse. She's also shown 
a lot less interest in illegal structures since her
<a href="../dbpub/articles.asp?p=1680">new boss</a> was caught with several on 
the Peak.</p>
<p>Webb-site has a voluntary, market-based solution to the potentially endless 
queue for Small Houses. Each year, the Government should conduct a reverse 
tender, with a small quota of say 1,000, and invite offers from men who can 
prove their 1898 male-line lineage, to extinguish all claims that they and their 
under-18 or unborn male descendants may ever make under the SHP.</p>
<p>To avoid remorse (having asked for too little), the lowest 1,000 offers would 
be taken at the highest price they offer, subject to a pre-determined cap. For 
example, if the lowest 1,000 offer their &quot;rights&quot; for up to $100,000, then they 
will each get $100,000, a total cost of HK$100m. Thus, in return for 
accelerating what could be a very long wait, they get a lower windfall, and the 
Government gets to extinguish the problem over time at a relatively low cost. 
The quota should be set to ensure scarcity, with no promise that it will happen 
every year, but if bids are low enough, then the quota could be increased. If 
repeated for 15 years, by 2029 the problem might even be small enough to end the 
SHP for newborn boys altogether as Carrie Lam had proposed, and to overcome 
political objection.</p>
<h4>Ancestry registry</h4>
<p>A registry should be established for all indigenous males who wish to benefit 
from that status. Standards of proof should be strict; a chain of birth 
certificates linking male ascendants back to a person living in the New 
Territories in 1898, or similar documentary support, not the word of a village 
chief who wasn't alive then. An appeal board would be needed to decide difficult 
cases.</p>
<h4>Residency requirement</h4>
<p>Also, to avoid an avalanche of applications from overseas &quot;indigenous&quot; men 
who have no intention of living in HK, some of whom have never set foot here, 
applicants in the tender should have to prove that they have resided in HK 
continuously for 5 years up to the application date with absences of not more 
than, say 90 days per year.</p>
<h4>Indigenous housing</h4>
<p>At the same time, more should be done to ensure that the original policy 
intent is followed. In particular, the Government should stop agreeing to remove 
the non-alienation clause on land leases granted for small houses in return for 
premiums, because those premiums always leave room for a windfall and also 
reduce the stock of indigenous housing. Think of the current system as a bucket 
with a hole in it - we are pouring in indigenous housing almost as fast as it is 
flowing out into the rest of the market. The same should apply to building 
licenses for Small Houses built on private land. If you want to claim under the 
SHP, then the resulting house should remain in the indigenous market.</p>
<p>This would mean that these houses could only be sold or transferred to 
another indigenous male, who does not have to pay a premium. Any such buyer of a 
second-hand indigenous home would forego his &quot;right&quot; to claim under the SHP in 
future, and any indigenous male who inherits one would also have satisfied his 
claim, so he doesn't get both his late father's house <em>and</em> another 
house.</p>
<p>Returning to the policy intent, while still allowing indigenous males who 
genuinely need to occupy a small house to eventually have one, would reduce the 
money to be made from flipping them into the private sector, and this would then 
increase the attraction of the buy-back tender, thereby reducing the clearance 
price.</p>
<h3>What about the girls?</h3>
<p>For our female readers who think the SHP is unfair to them, well yes, of 
course it is. Unfortunately, if the Government were to apply the policy to all 
descendants of 1898 villagers, then millions of HK (and overseas) 
people would have at least 1 ancestor who was alive in the NT in 1898. That's 
due to the exponential effect of family trees. A 30 year-old person today might 
have 32 great-great-great-grandparents who were in their 30s in 1898, only 1 of 
whom has to have been living in the NT for their entire family to qualify. The 
gender-neutral alternative would be to take only the first-born child of each 
person down the line, but the logistics of proving who that was are much harder. </p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2317826">Chan, Calvin (HCA666/2007)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2317825">Chan, Joe Cho Wing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2317827">Chan, Yau</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=186">Small House Policy</a></li>
				
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