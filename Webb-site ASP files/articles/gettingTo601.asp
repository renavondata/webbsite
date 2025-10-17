
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

<script type="text/javascript">document.title="Getting to 601: How Beijing controls the HK Chief Executive election";</script>

	<div class="summary">Carrie Lam continues to peddle the lie that the Chief Executive Election Committee is "broadly representative", often unchallenged by foreign media. We explain exactly how it is rigged, and how with enough political courage, she could unrig it and introduce democracy through local legislation, without Beijing's approval.</div>

<h2 class="center">Getting to 601: How Beijing controls the HK Chief Executive election<br>
<span class="headlinedate">28 January 2020</span></h2>
<p>Watching from the comfort of HK as Chief Executive Carrie Lam toured the TV studios of 
Davos last week, we saw her repeat the line that the 2014 proposals for 
Iranian-style "universal suffrage" for the Chief Executive weren't bad, because the nominating committee, currently 
known as the
<a href="../dbpub/officers.asp?p=8576&amp;sort=namup&amp;hide=Y&amp;d=&amp;u=0">Election Committee</a> 
(<strong>EC</strong>), that would vet the 
candidates is "broadly representative". In her own words,
<a href="https://www.bloomberg.com/news/videos/2020-01-21/lam-says-central-government-isn-t-tightening-grip-on-hong-kong-video" target="_blank">
on Bloomberg TV</a> (start at 02:43):</p>
<blockquote>"The nominating committee's broad representation comes from the 
different sectors. It's not entirely within sort of Beijing loyalists. You have 
professional people, you have representatives from the trade unions, from the 
business sector...Through the nominating committee, the Hong Kong people, under 
the respective [constituencies], will elect this 1,200-member nominating 
	committee..."</blockquote>
<p>Sounds great, doesn't it? Of course, it is completely false. The same EC already 
"elects" the Chief Executive, and nobody regards that process as democratic, 
precisely because nobody regards the EC as broadly representative. If it were, 
then like the election of the USA's President by its electoral college, the 
process would be 
regarded as democratic, albeit indirect.&nbsp;That "broadly representative" claim went 
unchallenged by the interviewer, and we've seen it happen so many times with 
other HK officials and other interviewers that it's about time we provided the 
media with the verifiable truth.</p>
<p>Also unmentioned was the fact that the detailed rigging of this structure 
with small-circle (often uncontested) corporate elections is all contained in HK 
legislation, something that, legally speaking, can always be reformed without 
any approval from Beijing. All that it takes is for a brave Chief Executive to 
exercise his/her autonomy to propose a reform Bill and for the 
<a href="../dbpub/officers.asp?p=6610&amp;sort=namup&amp;hide=Y&amp;d=&amp;u=0">Legislative 
Council</a> (<strong>LegCo</strong>) to pass it. This is a matter of legislative 
reform, not constitutional reform. The details are contained in the
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/" target="_blank">Legislative 
Council Ordinance</a> (<strong>LCO</strong>) and the
<a href="https://www.hklii.hk/eng/hk/legis/ord/569/" target="_blank">Chief 
Executive Election Ordinance</a> (<strong>CEEO</strong>). Carrie Lam's claims 
that democracy is unattainable without following Beijing's rigged proposals for 
direct universal suffrage are false. Democracy can be achieved by universal 
suffrage to elect the 1,200-member EC in local law, without introducing 
universal suffrage for 
the Chief Executive election.</p>
<h3>Getting to 602</h3>
<p>It is true that, having won control of 17 of the 18 
<a href="../dbpub/cat.asp?c=1">District Councils</a> (<strong>DCs</strong>) 
in the Nov-2019 DC election, the pan-democrats will be able to elect all 57 EC 
seats representing the HK &amp; Kowloon DCs and 60 EC seats representing the New 
Territories DCs. But that 117-seat loss makes no difference to Beijing's control 
of the EC. Assuming that all 1200 seats are filled, a candidate will be elected 
as Chief Executive if he or she secures 601 votes. In the latest CE election in 
2016, that was achievable without the DC subsectors as follows:</p>
<img class="center" alt="Getting to 601" src="../images/GettingTo601.gif">
<p>The table shows that to get to 602 EC seats (1 more than needed in a full 
committee) and become 
Chief Executive, a candidate only needed the support of subsectors with a 
combined electorate of 11,340, including just 1,400 individual human voters and 
9,940 companies or organisations (<strong>bodies</strong>). In fact, most of 
those subsectors have such small electorates (when they have electorates at all) 
that the nominations were uncontested. Just 4,378 votes were cast to elect the 
602 EC members, in subsectors that had just 541 human voters and 6,594 bodies. 
This gives the lie to Carrie Lam's claim; the EC is not "broadly 
representative" but very narrowly based.</p>
<p>And just in case you might think that 602 is cutting it too close, look at 
the other 3 uncontested subsectors at the bottom of the table. Another 9,320 
voters didn't need to vote after nominating 53 more seats, so the candidate is 
now home and dry. All he or she has to do, with Beijing's support, is keep the 
vested interests in those subsectors happy.</p>
<p>HK officials will often boast that the EC has "almost a quarter of a 
million" electors (246,440 in 2016), but the truth of this table is that subsectors with 
11,340 (4.6%) of the electors chose 602 seats. By comparison, in the Education 
subsector, 80,643 human voters (32.7% of the total electorate) elect just 30 
seats or 2.5% of the EC, while the 3 subsectors with the largest electorates: 
Education, Health Services, and Accountancy, have 144,031 human voters (58.5%) 
and only elected 90 EC seats (7.5%).</p>
<p>Let's walk you down that crooked road to 602.</p>
<h3>Religions</h3>
<p>Each of 6 religious bodies (Section 6(1) of the
<a href="https://www.hklii.hk/eng/hk/legis/ord/569/sch.html" target="_blank">
Schedule to the CEEO</a>) gets to appoint 10 seats to the EC in the Religious 
subsector. Amongst them, the Catholic Diocese and the Christian Council 
(basically, the non-Catholic Christians) each hold their own quasi-democratic 
election process and then nominate more than 10 candidates, forcing the 
Government to do a random draw, so they cannot be relied upon. The other 4 are solidly pro-Beijing and 
currently include several people who would be better described as tycoons than 
servants of their gods. It's almost inevitable that those who make the largest donations to 
NGOs such as churches are more likely to get nominated by those bodies.</p>
<p>There is of course no reason why groups of people with certain beliefs 
should have extra representation in the electoral process beyond their human 
rights. There are also no seats reserved for the largest, null religion 
(atheism), nor for Jews, Hindus, Sikhs or Scientologists - so even if you think 
it's a good idea to give your god a vote, what about those who believe in other 
deities or believe that there is no god at all?</p>
<h3>Ex-officio seats</h3>
<p>If you are one of the 36 HK delegates to the 
<a href="../dbpub/officers.asp?p=6619&amp;sort=posup&amp;hide=Y&amp;d=&amp;u=0">National People's Congress</a> (<strong>NPC</strong>), 
then you automatically get an EC seat. The NPC delegates are chosen by a
<a href="https://en.wikipedia.org/wiki/2017_National_People's_Congress_election_in_Hong_Kong" target="_blank">
similar small-circle election</a> which includes the EC members and can be 
counted on by Beijing.</p>
<p>Each HK Legislator also gets an EC seat. The pro-Beijing 
camp
<a href="https://en.wikipedia.org/wiki/2016_Hong_Kong_legislative_election" target="_blank">
won 40</a> of the 70 LegCo seats in 2016, of which 22 were in the traditional 
Functional Constituencies (<strong>FCs</strong>) which correspond to sub-sectors 
of the EC. Incidentally, if a LegCo member is also an NPC delegate, then they only get 1 
vote. Last time around, 3 legislators were in that situation, reducing the committee 
to 1,197, and there were 2 vacancies in LegCo, reducing it to 1,195. Finally, 
one of the nominations in the uncontested Import-Export sector was ruled 
invalid, leaving 1 seat vacant, reducing the membership to 1,194, so 598 was 
enough to win.</p>
<p>It is possible that the pro-government camp will lose a couple of legislators 
in the Sep-2020 LegCo election, but almost impossible that they will lose 
control of LegCo - we'll explain that in another article.</p>
<h3>CPPCC</h3>
<p>Next come the 
<a href="../dbpub/officers.asp?p=6390&amp;sort=namup&amp;hide=Y&amp;d=&amp;u=0">Chinese People's Political Consultative Conference</a> (<strong>CPPCC</strong>) 
delegates. They are
<a href="https://www.scmp.com/print/news/hong-kong/politics/article/2130595/dozens-new-faces-hong-kong-join-top-china-advisory-body" target="_blank">
appointed</a> by Beijing, and in turn, they pick 51 of their members to sit on 
the EC. In 
2016, there were 91 registered electors - a ratio of just 1.78 per seat. Except, 
of course, that precisely 51 of them were nominated, avoiding the ugliness of an 
electoral contest.</p>
<h3>Agriculture &amp; Fisheries</h3>
<p>Now we come to what, if you had no prior knowledge and looked at the "broadly 
representative" EC, must be 
HK's most important economic sector: farming and fishing. They have 60 EC seats, 
and again, with an electorate of just 154 companies or organisations (known in 
the laws as <strong>bodies</strong>), they were able to agree on 60 seats 
without a contest. Of course, the reality is that the more dependent on 
Government policies and subsidies an economic sector is, the greater its 
representation in the EC, because then it is more easily influenced to support 
the Government. The electorate of Agriculture and Fisheries comprises corporate 
members of 8
bodies specified in
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/s20B.html" target="_blank">
Section 20B</a>, plus a list of associations in
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/sch1.html" target="_blank">
Schedule 1</a> of the LCO.</p>
<h3>Heung Yee Kuk</h3>
<p>The <a href="../dbpub/orgdata.asp?p=25235">Heung Yee Kuk</a> (<strong>HYK</strong>) 
was formed in 1926 to represent the interests of indigenous (male) villagers of 
the New Territories. Since 1959 it has been governed by the
<a href="https://www.hklii.hk/eng/hk/legis/ord/1097/" target="_blank">Heung Yee 
Kuk Ordinance</a>. It's
<a href="https://www.had.gov.hk/rre/eng/other/35th_rural_assembly_list.html" target="_blank">
Full Council</a> consists of Ex Officio Councillors, Special Councillors and 
Co-opted Councillors. All of them can vote in this subsector of the EC, electing 
26 EC seats.</p>
<p>The Ex Officio Councillors are the Chairman and 2 Vice Chairmen of each 
of 27 Rural Committees (<strong>RCs</strong>) (up to 81 in total, all male) plus 
as many
<a href="https://www.had.gov.hk/rre/chi/images/hyker/ntj_peace.pdf" target="_blank">
New Territories Justices of the Peace</a> (<strong>NTJPs</strong>) as the HK 
Chief Secretary for Administration wishes to appoint under
<a href="https://www.hklii.hk/eng/hk/legis/ord/510/s3.html" target="_blank">
Section 3(2)</a> of the Justices of the Peace Ordinance. There are
<a href="../dbpub/officers.asp?p=30946&amp;sort=namup&amp;hide=Y&amp;d=&amp;u=0">
currently 50 NTJPs</a>, appointed indefinitely - in most cases until they die. 
That includes 8 women, 6 of whom were appointed since 2013.</p>
<p>Incidentally, each of the 27 RC Chairmen is also an ex officio member 
of a District Council. 8 of the RCs fall under the
<a href="../dbpub/officers.asp?p=27093&amp;sort=namup&amp;hide=Y&amp;d=&amp;u=0">
Islands DC</a>, and that is why it is the only one of HK's 18 DCs that the 
pan-democrats didn't win in November, because 8 of its 18 members are 
ex-officio HYK. The pan-democrats would need to win all 10 elected seats for a 
majority. The other 19 RCs are scattered around 8 DCs.</p>
<p>The Special Councillors of HYK are up to 21 people, including up to 7 elected 
by the Ex Officio Councillors of each of Tai Po, Yuen Long and Southern 
Districts from among the Rural Committees. There are
<a href="../dbpub/officers.asp?p=25235&amp;sort=posup&amp;d=&amp;u=0">currently 
21</a> Special Councillors, including 1 female. For extra confusion, "Southern 
District" in this context includes "Tsuen Wan District" and is not the same as 
the Southern District Council's territory on HK Island, which does not have any 
Rural Committees. An RC map
<a href="https://www.had.gov.hk/rre/eng/elections/map19-23.html" target="_blank">
is here</a>.</p>
<p>The Co-opted Councillors are up to 15 people who cannot be RC members. Each 
must be nominated by 5 members of the HYK Executive Committee including the 
Chairman or a Vice Chairman, and each must be approved by the HKSAR Secretary 
for Home Affairs. There are currently 15, including 1 female.</p>
<p>Any Chief Executive can keep the HYK happy by continuing to grant indigenous 
male villagers, inheriting a Y-chromosome down the male line from 1898, land and 
approval to build houses under the 1972
<a href="https://en.wikipedia.org/wiki/Small_House_Policy" target="_blank">Small 
House Policy</a>, which stands in the way of more efficient land use in the New 
Territories and is one reason why the Government prefers to reclaim land from 
the sea. Each such villager can then monetize that benefit by flipping the 
property into the free market after 5 years (often signing deals in advance). 
The CE dare not mess with that policy as long as he or she needs the vote. The Government also turns a blind eye to 
all sorts of illegal structures on the houses and abuse of agricultural and 
government land.</p>
<h3>Small circle business sectors</h3>
<h4>Finance</h4>
<p>Next you see a list of mostly business sectors starting with Finance and 
extending to Import/Export. We've ranked them in order of electors per seat. The 
electors are mostly corporate, often with common owners, and very few human 
electors. For example, the
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/s20T.html" target="_blank">
Finance electors</a> are all banks, restricted-licence banks and deposit-taking 
companies under the Banking Ordinance. An Excel-format list is on the HKMA
<a href="https://www.hkma.gov.hk/media/eng/doc/key-functions/banking-stability/banking-policy-and-supervision/list_of_lb.xls" target="_blank">
web site here</a>. 122 of them were registered as electors in 2016. The tens of 
thousands of people who work in banks, unlike teachers or accountants, don't get 
a vote. A majority of the corporate electors are non-HK or have non-HK parent 
companies (including many from mainland China). It is somewhat ironic that at 
the same time as criticising "foreign interference" in our politics, the HK 
Chief Executive depends on the electoral support of many foreign-headquartered 
companies in the Finance and Insurance sectors.</p>
<h4>Insurance</h4>
<p>The Insurance constituency employs tens of thousands of people, but only 
insurers authorized or deemed to be authorized under the Insurance Ordinance are 
entitled to vote. 131 were registered in 2016. The current
<a href="https://www.ia.org.hk/en/supervision/reg_insurers_lloyd/register_of_authorized_insurers.html" target="_blank">
Register of Insurers</a> is on the Insurance Authority website. Again, most of 
the companies have non-HK parents. Those that are not from mainland China either 
do business there or aspire to, so they can be counted on to follow Beijing's 
wishes.</p>
<h4>Financial services</h4>
<p>The Financial Services constituency defined by
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/s20U.html" target="_blank">
Section 20U</a> of LCO is misleadingly named - it is restricted to companies 
which are brokers of a "recognized exchange company" or members of
<a href="../dbpub/articles.asp?p=15525">The Chinese Gold &amp; Silver Exchange 
Society</a> (<strong>CGSES</strong>). The only two recognized exchange companies 
are <a href="../dbpub/articles.asp?p=825">The Stock Exchange of Hong Kong Ltd</a> 
(<strong>SEHK</strong>) and <a href="../dbpub/orgdata.asp?p=966">Hong Kong 
Futures Exchange Ltd</a> (<strong>HKFE</strong>), both owned by
<a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(0388). Each broker only gets 1 vote regardless of market share, so it becomes 
the small-brokers constituency. SEHK currently has 704 participants of which 658 
are trading, but the top 65
<a href="https://www.hkex.com.hk/Market-Data/Statistics/Participant/Stock-Exchange-Participants'-Market-Share-Report?sc_lang=en" target="_blank">
account for</a> 92% of the market turnover. At the end of 2018, HKFE had 194 
participants, of which the top 10 account for about 80% of turnover. CGSES 
currently has
<a href="http://www.cgse.com.hk/chines/en/member-list" target="_blank">171 
members</a>, of which 60 have no trading licence or are suspended.</p>
<p>Other types of financial services firms such as asset management companies 
are not entitled to votes. Tens of thousands of people are licensed by the SFC 
to look after your money but unlike lawyers and doctors, they don't get to vote 
in their FC. </p>
<h4>Hotels</h4>
<p>Hotels are, unsurprisingly, mostly owned by property developers. Tens of 
thousands of staff in hotels don't get a vote, but the owners do - and often 
there are multiple hotels under a single owner. Hotels is one of 8 EC subsectors 
that do not have a directly equivalent FC, so their electorates are set out 
separately in
<a href="https://www.hklii.hk/eng/hk/legis/ord/569/sch.html" target="_blank">
Schedule 1</a> of the CEEO. The 120 electors are members of the
<a href="../dbpub/orgdata.asp?p=160376">Hong Kong Hotels Association</a> and the
<a href="../dbpub/orgdata.asp?p=31162">Federation of Hong Kong Hotel Owners Ltd</a>.</p>
<h4>Real Estate and Construction</h4>
<p>The Real Estate and Construction subsector employs tens of thousands of 
registered estate agents and registered construction workers, but they don't get a vote. The 
electorate under
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/s20N.html" target="_blank">
section 20N</a> of LCO are members of <a href="../dbpub/orgdata.asp?p=762593">The Real 
Estate Developers Association of HK</a>, <a href="../dbpub/orgdata.asp?p=57072">
The HK Construction Association Ltd</a> and
<a href="../dbpub/orgdata.asp?p=270317">The HK E&amp;M Contractors' Association Ltd</a>. 
In 2016 there were 484 bodies and 222 human electors, but behind those bodies 
are far fewer owners. Typically, each major property project is encapsulated in 
a special-purpose company and has a vote.</p>
<h4>Transport</h4>
<p>The Transport subsector is unusual in that each of its electors is named in 
law, in
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/sch1A.html" target="_blank">
Schedule 1A</a> of the LCO. We examined these in detail in a 2005 article
<a href="corpvote.asp"><em>Corporate Voting in HK Elections</em></a>. 
There have been a few minor changes since then. Incidentally, 2 of the electors 
are Government-controlled: <a href="../dbpub/articles.asp?p=11569">MTR 
Corporation Ltd</a> (0066) and the <a href="../dbpub/articles.asp?p=2123">
Airport Authority</a>. Many of the electors are members of the rent-seeking 
cartels that hold the fixed quotas of taxis, minibuses and hire car licences in 
HK, something we wrote about in <a href="roadcartels.asp">Busting 
HK's road transport cartels</a>, 14-Dec-2015. A Chief Executive can count on 
them for support as long as he or she protects the licence values by refusing to 
issue new licences despite market demand for them, against the public interest.</p>
<h3>Business chambers</h3>
<p>There are 6 business associations or chambers of commerce that have an 
aggregate quota of 104 EC seats and 4 legislators:
<a href="../dbpub/orgdata.asp?p=13497">The HK General Chamber of Commerce</a> (<strong>HKGCC</strong>),
<a href="../dbpub/orgdata.asp?p=13730">The Chinese General Chamber of Commerce</a>,
<a href="../dbpub/orgdata.asp?p=15986">Federation of HK Industries</a> and
<a href="../dbpub/orgdata.asp?p=16667">The Chinese Manufacturers' Association of 
HK</a> each have 18 EC seats and 1 legislator; while the
<a href="../dbpub/orgdata.asp?p=16653">Employers' Federation of HK</a> (<strong>EFHK</strong>) and
<a href="../dbpub/orgdata.asp?p=21188">The HK Chinese Enterprises Association</a> 
each have 16 EC seats. The only one of these 6 subsectors to have a contest in 
2016 was HKGCC, which had 19 candidates for 18 seats, probably a mistake.</p>
<p>The conglomerates of HK register numerous subsidiaries as members of the 
Chambers and hence as electors. The members also have factories and businesses 
in the mainland and will do as Beijing wishes in the selection of the CE.</p>
<h3>Sports, Performing Arts, Culture and Publication</h3>
<p>This subsector, with 60 EC seats and 1 legislator, is actually divided into 4 
sub-subsectors (<strong>SS</strong>) of 15 seats each. There's no public 
breakdown of the split between bodies and individual voters in the 
sub-subsectors, hence the grey box in our table, but we do know the totals. In 
2016, the Sports SS was uncontested. The subsector electorate is set out in
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/s20V.html" target="_blank">
Section 20V</a> and
<a href="https://www.hklii.hk/eng/hk/legis/ord/542/sch1B.html" target="_blank">
Schedule 1B</a> of the LCO and they are allocated to the SS by Section 12(2) of 
the <a href="https://www.hklii.hk/eng/hk/legis/ord/569/sch.html" target="_blank">
Schedule</a> to the CEEO.</p>
<p>This subsector and FC has always returned pro-Government representatives. 
It's partly because a lot of the constituents are run by tycoons and business 
people - even in sports associations, it's money that buys your way to the top, 
not sporting prowess. But it's also because of Government largesse, with 
taxpayers' money thrown at the sector, subsidising athletes, sports 
events and facilities, orchestras and other performing arts groups, venues, museum facilities and so on.</p>
<p>Notably the votes within the subsector are not evenly distributed. The 
Performing Arts SS has only 190 voters, while the Culture SS has 1,356. Schedule 
1B of the LCO identifies 53 voters by name. Numerous bodies that you might think 
would be allocated to Performing Arts are in fact allocated to Culture - for 
example, <a href="../dbpub/orgdata.asp?p=47293">HK Dance Co Ltd</a>, and 
orchestras <a href="../dbpub/articles.asp?p=24949">The HK Philharmonic Society Ltd</a> and 
<a href="../dbpub/orgdata.asp?p=37789">HK Chinese 
Orchestra Ltd</a>. The Performing Arts SS seems reserved for the TV and movie 
industry, which benefits from subsidies such as the
<a href="https://www.fdc.gov.hk/en/services/services2.htm" target="_blank">Hong 
Kong Film Development Fund</a>.</p>
<h3>Labour</h3>
<p>At last, you might think, a sector for the hard-working people of HK who 
elect 60 EC seats, 5% of the Committee. Better than nothing, right? Well, not 
much. The Labour constituency comprises not workers, but trade unions (<strong>TUs</strong>) 
that are registered under the
<a href="https://www.hklii.hk/eng/hk/legis/ord/332/" target="_blank">Trade 
Unions Ordinance</a> of which all the voting members are employees (i.e. 
excluding employers' unions like EFHK). To register a TU, you need 7 voting 
members, and to keep it going, probably fewer.</p>
<p>The Registrar of TUs publishes an
<a href="https://www.labour.gov.hk/tc/public/pdf/rtu/ASR2018.pdf" target="_blank">
annual statistical report</a>. As of 31-Dec-2018, there were 846 employee TUs, 
up 42.4% from 594 in 2000, claiming 911,593 members, up 35.4% in 18 years. That 
probably includes some double-counting of members of more than one TU. The 
number of salaried employees and wage earners in HK during that period rose more 
slowly, so the TU participation rate was 22.08% in 2000 and 25.06% in 2018.</p>
<p>However, remember that each TU, however large, only gets 1 vote. So the big 
ones don't really count and may seek to register in different subsectors 
instead. In 2016, only 622 TUs were registered to vote in the subsector. In 
2018, 255 TUs (30.1%) had 50 or fewer members (average: 19), together accounting 
for only 0.5% of total membership. Adding the next size-band of 270 TUs with 
51-250 members (average: 128), we find that 525 TUs (62.1%) had an average of 75 
members accounting for only 4.3% of Trade Union membership but a majority of all 
TUs.</p>
<p>Many of the TU names reflect HK's industrial past, such as the "Hong 
Kong and Kowloon Steel Shipbuilding Artisans Union" currently shown without a 
membership figure. The Registrar does this for those which "have long failed to 
update their membership figure". Then there are vague names like the "Hong Kong 
Workers Union", registered in 2000 with 6 members. Our favourite is the "Hong 
Kong and Kowloon Tea-leaf Trade Workers General Union", registered in 1948 and 
now boasting 12 members for all the tea in China.</p>
<p>It seems likely that some unions are registered or maintained for the 
purposes of obtaining a vote in the Labour sector. In any event, all 3 
legislators representing this sector, and its EC seat holders, have been 
pro-Beijing since the Handover.
Pan-democrats could perhaps make inroads into the sector by registering hundreds 
of TUs each 
for groups of 7 employees, not necessarily under the same employer, but don't 
underestimate the coordination of Beijing's "United Front" operation to join the 
race and counter-create even more TUs.</p>
<h3>Democratising the EC and FCs - what Carrie Lam should do, but probably won't</h3>
<p>Instead of making false claims that the EC is "broadly representative", it is 
within the Chief Executive's "high degree of autonomy" to propose changes 
to the LCO and CEEO to eliminate corporate voting and give every employee of 
every corporate voter a vote instead, making the claim come true. The Government knows who the employees 
are, because the Inland Revenue Department receives an Employer's Return every 
year itemising them. So it would not be technically difficult to convert the 
rigged EC into a democratically elected EC - it is just a matter of political 
will.</p>
<p>The Basic Law would remain untouched - it would still require 4 EC 
sectors, each of 300 seats, as set out in
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc1&2.pdf" target="_blank">
Annex I of the Basic Law</a> (as amended on 28-Aug-2010); it would still have a 
nomination threshold of 150 for CE candidates; and it would still elect the CE 
from amongst the candidates by majority. The sectors required by the Basic Law are:</p>
<ol>
	<li>Industrial, commercial and financial sectors</li>
	<li>The professions</li>
	<li>Labour, social services, religious and other sectors</li>
	<li>Members of LegCo, NPC Deputies, and representatives of DCs, HYK and 
	CPPCC</li>
</ol>
<p>Sector 4 can't be touched, but the opportunity can be taken to reallocate the 
300 seats in each of the other sectors proportionate to the size of their new 
human electorates, so that would, for example, shrink Agriculture and Fisheries, 
and enlarge Finance, Financial Services and Insurance. Religion could be treated 
like any other subsector - that is, if you work for a religion-based 
organisation, then you have a vote, and the number of EC seats is proportionate 
to the size of the electorate. All HK workers would have a vote, and therefore the 
"labour" sector could be reduced to those who don't work in one of the existing 
subsectors, including those who work in trade union offices. Sector 3 includes 
"other sectors", so room could be made for homemakers and people who are 
unemployed, retired or adult students.</p>
<p>Similarly in LegCo,
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc3&4.pdf" target="_blank">
Annex II of the Basic Law</a> (as amended on 28-Aug-2010) requires only that 
there must be 35 "Members returned by functional constituencies". The details of 
what those constituencies are, who they represent, and how they are elected, are 
entirely matters within HK's local legislation and within its high degree of 
autonomy, if the Chief Executive chooses to exercise it. </p>
<p><em>&copy; Webb-site.com, 2020</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2123">AIRPORT AUTHORITY</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13730">CHINESE GENERAL CHAMBER OF COMMERCE (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15525">CHINESE GOLD AND SILVER EXCHANGE SOCIETY (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16667">CHINESE MANUFACTURERS' ASSOCIATION OF HONG KONG (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16653">Employers' Federation of Hong Kong</a></li>
				
				<li><a href="/dbpub/articles.asp?p=31162">FEDERATION OF HONG KONG HOTEL OWNERS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15986">FEDERATION OF HONG KONG INDUSTRIES</a></li>
				
				<li><a href="/dbpub/articles.asp?p=25235">HEUNG YEE KUK INCORPORATED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8576">HKSAR Election Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6610">HKSAR Legislative Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30946">HKSAR New Territories Justices of the Peace</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21188">HONG KONG CHINESE ENTERPRISES ASSOCIATION (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=37789">HONG KONG CHINESE ORCHESTRA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=57072">HONG KONG CONSTRUCTION ASSOCIATION, LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=47293">HONG KONG DANCE COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=270317">HONG KONG E&M CONTRACTORS' ASSOCIATION LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=30112">Hong Kong Film Development Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=966">HONG KONG FUTURES EXCHANGE LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13497">HONG KONG GENERAL CHAMBER OF COMMERCE (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=160376">HONG KONG HOTELS ASSOCIATION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=24949">HONG KONG PHILHARMONIC SOCIETY LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6390">PRC CPPCC National Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=6619">PRC National People's Congress</a></li>
				
				<li><a href="/dbpub/articles.asp?p=762593">REAL ESTATE DEVELOPERS ASSOCIATION OF HONG KONG LIMITED (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=825">STOCK EXCHANGE OF HONG KONG LIMITED (THE)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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