
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

<script type="text/javascript">document.title="One Vote, Wrong System";</script>

	<div class="summary">Webb-site.com takes a close look at the unfair form of proportional representation practiced in Hong Kong's geographic constituencies. As we will show, the devil is in the details, which mathematically favour short lists, 1-person lists and lunatics. The system also excludes candidate choice within parties and wastes a lot of votes. We make several proposals for electoral reform, the best of which would be a Single Transferable Vote system.</div>

<h2 class="center">One Vote, Wrong System<br>
<span class="headlinedate">24 September 2004</span></h2>
<p>In the aftermath of the 2004 Legislative Council elections, it is high time 
that Hong Kong reviewed its unusual and unfair method of proportional 
representation, put in place by the unelected Provisional Legislative Council in 
1997. As we will show, the devil is in the details, which mathematically favour 
short lists, 1-person lists and lunatics. They also exclude voters from 
candidate choice within parties. We make several proposals for electoral reform.</p>

<h3>Wrong Quota</h3>

<p>Hong Kong operates, for the half of its 60-seat Legislative Council that is 
now directly elected, a closed party-list proportional representation system 
using what is known as a &quot;largest remainder&quot; seat allocation 
method. The 30 seats are divided into 5 geographic constituencies with seats 
allocated broadly proportional to the population of those areas, resulting in 
constituency sizes of 4,5,6,7 and 8 seats. Electors cast a single vote for a 
list consisting of 1 or more candidates.</p>

<p>The total number of votes in each constituency is divided by the number 
of seats, to determine a &quot;quota&quot;. Any list which gets 1 or more quota of votes 
is allocated one seat per quota, then for those lists which have unelected 
candidates, the remaining votes  are 
ranked by size, and the remaining seats are allocated to the lists with the 
largest remainders. The type of quota used in Hong Kong is known as the <b>
Hare quota</b> after English solicitor Thomas Hare (1806-1891).</p>

<p>As we will show, this is the wrong type of quota for Hong Kong's system, 
because the votes discarded are non-transferable, so there is no allocation of 
unused remainders or from an exhausted list, where all the candidates on that 
list have been elected and there are votes left over, nor are votes transferred 
from the minority lists which are not elected.</p>

<p>The combination of the Hare quota and the non-transferable vote has some 
mathematical consequences:</p>

<ol>
  <li>
<p>The first candidate on each list does not need to 
get a full Hare quota to be sure of election. For example, in a <b>S</b>=4 seat 
constituency with <b>V</b>=100,000 votes, the Hare Quota is 25,000, but any list with 
20,001 votes can be certain of their first candidate being elected, because it 
is impossible for 4 other lists to each have more votes than that. This lower 
target is known as the <b>Droop quota</b>, after English lawyer and 
mathematician Henry Droop (1831-1884) and the general formula is <b>V/(S+1)</b> 
votes, rounded up to the nearest vote. This is always less than the Hare quota,
<b>V/S</b>, and in constituencies with the smallest number of seats the percentage difference 
between Hare and Droop is greatest.</p>

  </li>
  <li>
<p>When there are not more lists (<b>L</b>) than seats, 
that is, if L&lt;=S, then the number of votes needed for election of the first 
candidate reduces even 
further. For example, if there are 4 lists of candidates 
for 4 seats and 100,000 votes, then we know that at least one list will get a 
full Hare quota of 25,000, removing those votes from the remainders. So that 
will leave 3 seats and not more than 75,000 votes. Any list which gets at least 
18,751 votes can be certain of their first candidate being elected because it 
would be impossible for 3 other lists to each have more than that number. The 
general formula for this quota is <b>V *(L-1)/SL </b>(rounded up), as long as L&lt;=S.</p>

  </li>
  <li>
<p>Note that these lower targets are mathematical 
absolutes, regardless of voting patterns. In practice, the more quotas that are 
filled by the most popular party lists, the easier it gets for the first candidate 
on an unpopular list. This is simply because each successive candidate elected 
by quota on a list absorbs a full Hare quota, whereas the first candidate on a 
competing list only 
needs a Droop quota at worst.</p>

  </li>
  <li>
<p>The use of the &quot;largest remainder&quot; is also 
favourable to small lists, because in the worst case, if all except 1 quota is 
absorbed by the lists, then that only leaves 1 seat to fight over with the 
remainders. If the remainders are evenly distributed amongst the lists, then a 
candidate could be elected with only 1/L quotas or <b>V/LS</b> votes. For example, in a 
8-seat constituency with 12 lists, the minimum vote for a winning candidate 
could be as low as 1/96 of the vote, or about 1.05%, giving him 12.5% of the 
seats. This encourages people to split their lists, because the more lists you 
have, the greater the number of tickets you have in the &quot;remainder lottery&quot;. It 
also encourages lunatics who have a theoretical chance of being elected with a tiny 
vote but are almost certain to result in wasted votes that might otherwise have 
gone to the leading parties.</p>

  </li>
  <li>
<p>So you see that our system favours, in the following 
order: lunatics, 1-person lists and short lists over long lists. Not only do 
1-person lists have an easier target to ensure election, but their surplus votes 
tend to draw support away from the popular parties, and for the complete 
outsiders, they have just a chance of being elected (probably for 1 term only, 
unless they turn out to be sane after all).</p>

  </li>
</ol>
<h3>Highest average</h3>

<p>Within the constraints of non-transferable voting, 
there is a better way to handle the remainder vote than the current &quot;largest 
remainder&quot; used in HK. The alternative is the &quot;<a target="_blank" href="http://highest-averages-method.wikiverse.org/">highest average</a>&quot; and 
in essence it allocates seats to lists so as to achieve the highest average 
votes per seat.</p>

<p>There are two ways to do this, and the fairest and 
most popular method is the Sainte-Lague method, published in 1910 by the French 
mathematician Andre Sainte-Lague (1882-1950). It is also known as Webster's 
method. This method results in rounding to the nearest whole seat for each list. 
The alternative is the d'Hondt method described in 1878 by Belgian mathematician 
Victor d'Hondt (1841-1901). This rounds down and so generally favours large parties over 
small ones.</p>

<p>The Sainte-Lague method in effect finds the highest 
quota which, when divided into the actual votes for each list and rounded to the 
nearest whole number, allocates all the seats. The d'Hondt method finds the 
highest quota which, when divided into the actual votes for each list and 
rounded down to a whole number, allocates all the seats.</p>

<h3>Example 1: HK Island</h3>

<p>Now for some real-life examples. Let us first 
consider the 2004 race for HK Island, where anti-democrat Rita Fan was running 
alone. She was one of 6 lists for 6 seats. As a consequence, regardless of how 
people voted, she only needed 5/36=13.89% of the vote to be certain of election. 
When you further consider that, due to their popularity, 3 of the other lists 
were nearly certain to each fill a Hare quota (absorbing exactly half the 
votes), then you realise that there were only 3 seats and 50% of the vote left 
to fight over, and she only needed 12.5% to be sure of election.</p>

<p>In the end, she got 18.54% of the vote, which was 
21,399 votes more than she needed. She almost certainly drew her surplus wasted 
votes from people who would otherwise have voted for the DAB list. Here are the 
actual votes (pro-democracy lists in blue, anti-democracy in red, unknowns in 
green):</p>

<img class="center" alt="" src="../images/HKislandHare.gif">

<p>Look also at the pan-democrat strategy. In HK Island 
they split their 4 main candidates onto two separate lists, headed by barrister 
Audrey Eu Yuet Mee and the Democratic Party's Yeung Sum and with a third member 
on the Democratic Party list. The split lists was a risky gamble which did not 
pay off, but you can't blame them for trying, because the main strategic goal of 
the pan-democrats in this election was to give themselves a slight chance of 
getting 30 or 31 of the 60 votes in LegCo, even if it meant increasing the 
downside risk. Politically, there isn't much difference between 24 and 26 votes 
(they won 25) but 30 or 31 would have made a big difference. Other factors, such 
as the pecking order for 3rd and 4th place on a combined list, also may have 
kept them apart.</p>

<p>The leading 2 candidates on the 2 lists were 
near-certain of election, absorbing a Hare quota, or 16.67% each. They also knew 
that the anti-democrat DAB would fill 1 Hare quota. So the pan-democrats next 2 
candidates each needed only 12.5% of the vote to be sure of a win. So if the 
votes were evenly split on the two lists, they could be certain of victory with
<b>58.33%</b> of the vote, and they also had 2 tickets in the remainder lottery.</p>

<p>By comparison, if they had run on a single list, 
then to get 4 candidates elected, they would have filled 3 Hare quotas with 50% 
of the vote, one quota would go to the DAB, and then the pan-democrats would need 11.11% to 
be certain of the 4th seat, for a total target of <b>61.11%</b>.</p>

<p>So you can see that because of HK's biased Hare 
quota, the two-list strategy required a lower percentage of pan-democrat support 
than a 4-in-1 list, but it did require that the votes be split evenly to have 
the highest chance of success.</p>

<p>In the end, the twin lists polled a 
combined 58.07%, but their distribution was so skewed that the remainder system 
allowed the second DAB candidate to win the 6th seat by 815 votes, or 0.23%. 
This skew has been attributed to a last-minute switch by voters, egged on by the 
DP, who saw that 
opinion polls put one list ahead of the other and chose to switch their votes to 
the trailing list. So many people did this that it skewed the result in the 
opposite direction to the opinion poll. In fact, if another 1,887 people had 
switched to the DP, they would have got a 3rd seat on the remainder, bringing 
the pan-democrats to 4.</p>

<p>While the media were quick to jump on the result as faulty 
strategy, it was really the faulty system that was to blame, as it incentivises 
the splitting of lists and penalises the all-in-1 approach. It was always a long 
shot to expect 200,000 voters to split their votes evenly on two lists.</p>

<p>But let's see what happens if you use the Droop 
quota of 50,586, removing the bias in the Hare quota of 59,016 which favours 
short lists:</p>

<img class="center" alt="" src="../images/HKislandDroop.gif">

<p>As you can see, the DP would have won a 3rd seat on 
its remainder, bringing the pan-democrat total to 4. Both the Sainte-Lague and 
d'Hondt methods of highest average would also have given the DP 3 seats, taking 
the pan-democrats to 4 in total. Similarly, if they had run a combined list and 
attracted the same votes, they would also have won 4, using either Hare or 
Droop. </p>

<h3>Example 2: NT East</h3>

<p>In another example, in New Territories East, there 
were only 6 lists for 7 seats, which meant that tycoon James Tien and veteran 
protester Leung Kwok Hung, 
each running on their own lists, only needed 5/42=11.90% of the vote, or 51,311 
votes, to be certain of 
election. In the end, they got 15.91% and 14.14% of the vote respectively, which 
was 17,249 and 9,614 votes more than they needed.</p>

<h3>Example 3: NT West</h3>

<p>Here, there were 8 seats, 12 lists and 30 
candidates! Albert Chan Wai Yip, running alone, won 36,278 votes or just 7.83% 
of the vote, less than the 11.11% Droop quota but enough to win a seat, which of 
course is 12.5% of the seats.</p>

<h3>Closed Lists v Open Lists</h3>
<p>Another defect in the list system is that unless the 
candidate runs on a solo list, you cannot vote for a particular candidate, only 
for a party. Hong Kong has what is known as a &quot;closed list&quot; voting system. Many 
jurisdictions which have the party-list system have &quot;open lists&quot; so that with a 
single tick you can vote for a particular candidate, and the vote also counts 
for the party list. The votes within the list then determines the order in which 
candidates on a party list are awarded seats, while still giving the list the 
same number of votes.</p>
<p>Such a system, if employed in Hong Kong, would 
remove any arguments about the pecking order when pro-democracy candidates team 
up and run on the same list, because the voters would determine the order. If 
you combine that with a change from the Hare quota to the Droop quota, then the 
system would be fairer to all parties, large and small.</p>
<h3>Singe Transferable Vote - the way forward</h3>
<p>Although HK's party-list system could be corrected 
with the use of the Droop quota and an Open List, it would still be structurally 
defective in the sense that voters cannot express any order of preference 
between lists or between candidates running on different lists. This means that any vote for an outside list with no real hope of 
election is a wasted vote (unless they get very lucky in a largest-remainder 
system). Votes are also wasted when a list of candidates is exhausted by quota.</p>
<p>While maintaining proportional representation, a 
better way to give representation to electors would be to abandon the party list 
system and move to a system which allows electors to express an order of 
preference for candidates. In multi-seat constituencies, this is known as the 
&quot;Single Transferable Vote&quot; or <b>STV</b> system. An elector places a &quot;1&quot; next to 
his favourite candidate, a &quot;2&quot; next to his second choice, &quot;3&quot; against the third 
choice, and so on. The elector does not have to prioritise the entire list - she 
can stop at any point after indicating her first choice. The elector does not 
have to stick with a particular party - the candidates can be ranked in any 
order, regardless of party. It also allows those who wish to lodge a protest 
vote for a minority candidate to still put a leading party's candidate as their second 
choice.</p>
<p>When the votes are counted, the first choices are 
ranked, and any candidate with a Droop quota is elected. His surplus votes, and 
the votes of the lowest ranked candidate, are then transferred to the 
second-choice candidates (where the elector has expressed a preference). Anyone 
with a quota is elected, and the process repeats itself until all the seats are 
allocated. In single seat constituencies, this type of election is known as the 
&quot;Alternative Vote&quot; (<b>AV</b>) system. The counting mechanics are fairly 
complicated and need to be centralised, but they are perfectly manageable and 
well documented. The use of machine-readable voting papers can accelerate the 
count while still providing an auditable paper trail.</p>
<p>From the elector's point of view, the voting process 
is simple. Anyone who ranks all the candidates (or all but one) can then be 
certain that their vote has counted towards determining the outcome of the 
election, because their vote will end up either electing their first choice or 
being transferred to another  candidate. It encourages voter 
participation and tends to lead to higher turn-outs. The STV system is used by, 
amongst others, Ireland (since independence in 1922),&nbsp; Malta and the 
Australian Senate, and is gaining increasing popularity due to the fairness and 
increased participation and choice that it offers electors. The Scottish 
Parliament recently <a target="_blank" href="http://www.fairsharevoting.org/">
adopted</a> STV for local council elections.</p>
<p>It may also surprise you to learn that the AV system 
(which is the STV system for a 1-seat constituency) is actually
<a target="_blank" href="http://www.info.gov.hk/eac/pdf/legco/2004/en/2004guideline/appendix_c.pdf">
used in Hong Kong</a> for 4 of the 30 Functional Constituencies: Heung Yee Kuk, 
Agriculture and Fisheries, Insurance and Transport. At least, it would be used 
if these constituencies ever have contested elections, which they don't most of 
the time as the electorates are so small (ranging from 149 to 182, and mostly 
corporates many of which have common control) that they just agree amongst 
themselves rather than put it to a vote. But if anyone tells you that STV 
wouldn't work in HK, just remind them that we've already got it.</p>
<h3>Conclusions and recommendations</h3>
<p>We have shown that the Hare quota and largest 
remainder system of Hong Kong's proportional representation are structurally 
biased in favour of short lists, 1-person lists and lunatics, while failing to 
allow electors to vote for an individual candidate. The quota problem could be 
easily addressed by a legislative change to the Droop quota, and we could easily 
move to an open-list system, but it would still leave the defects of the 
largest-remainder, which can result in a lottery for the remaining seats in 
which a minority candidate with minimal support can be elected if the 
distribution of remainders is even. If the party-list system is to be retained, 
then it would be better to forget fixed quotas and move to the Sainte-Lague 
method of seat allocation, which allocates seats based on largest average votes.</p>
<p>A more forward-looking approach, in line with Hong 
Kong's ambitions to be a world-class city, would be to abandon party lists and 
move to a Single Transferable Vote system in which every vote can count, and 
electors express an order of preference for the candidates. So, in order of 
preference, our recommendations are:</p>
<ol>
  <li>
<p>Scrap party lists in favour of a Single Transferable 
Vote system</p>
  </li>
  <li>
<p>Failing that, open the party lists and scrap the 
largest remainder in favour of the Sainte-Lague method of seat allocation</p>
  </li>
  <li>
<p>Failing that, as a minimum change, open the party 
lists and change from the Hare quota to Droop quota</p>
  </li>
</ol>
<p>Of course, none of this discussion changes the fact that a 
legislative assembly can hardly be called &quot;proportional&quot; so long as the general 
public only gets to elect half its members. That is a
<a target="_blank" href="suffrage.asp">separate problem</a>, but the correction 
and enhancement of our proportional representation system can take place in 
parallel with the push for universal suffrage.</p>

<p><b>To read more on election systems:</b></p>
<ul>
	<li><a target="_blank" href="http://www.idea.int/">International Institute for Democracy and Electoral Assistance</a></li>
	<li><a target="_blank" href="http://www.aceproject.org/">Administration and Cost of Elections Project</a></li>
	<li><a target="_blank" href="http://www.electoral-reform.org.uk">Electoral Reform Society (UK)</a></li>
</ul>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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