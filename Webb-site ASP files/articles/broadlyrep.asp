
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

<script type="text/javascript">document.title="Broadly representative of wealth";</script>

	<div class="summary">C Y Leung tells 3 media from democratic countries that the Nominating Committee should be "broadly representative" of wealthy people, not the general public, who would otherwise wreck the economy, and explains how he has to pander to vested interests in the committee to get elected. Yet the lack of a popular electoral mandate has resulted in populist handouts anyway, as well as wasteful infrastructure spending to favour vested interests. Could a democratically nominated and elected CE really be any worse? We also look ahead to what the students should realistically be asking for tonight.</div>

<h2 class="center">Broadly representative of wealth<br>
<span class="headlinedate">21 October 2014</span></h2>
<p>On Monday evening (20-Oct-2014), HK Chief Executive 
<a href="../dbpub/natarts.asp?p=1680">Leung Chun Ying</a> held a 
joint interview at Government House with three international media - the
<a href="http://www.ft.com/intl/cms/s/0/3f6f1c74-584b-11e4-a31b-00144feab7de.html" target="_blank">
Financial Times</a>,
<a href="http://www.nytimes.com/2014/10/21/world/asia/leung-chun-ying-hong-kong-china-protests.html" target="_blank">
New York Times</a> and
<a href="http://online.wsj.com/articles/hong-kong-leader-sticks-to-election-position-ahead-of-talks-1413817975" target="_blank">
Wall Street Journal</a>. Hit the links to see their reports (subscriptions may 
be needed).</p>
<h3>Pandering to various sectors</h3>
<p>The most telling part of this interview was when he explained how candidates 
have to pander to 
the vested interests in the 1200-member <a href="../dbpub/officers.asp?p=8576&amp;sort=posup&amp;d=&amp;u=0" target="_blank">
Election Committee</a> (which Beijing proposes shall become the Nominating 
Committee) in order to get elected (nominated). The NYT quotes him:</p>
<blockquote>&quot;The chief executive said that in seeking the top job, he 
had exhaustively wooed the 20 members of the committee who had been chosen by 
coaches and others in the city's athletics sector. "If it was an entirely 
universal suffrage election," in which anyone could appear on the ballot, Mr. 
Leung said, "then the sports community would not count, they would not feature 
on my radar screen - I would not spend hours sitting down with them."</blockquote>
<p>Actually the Sports sector has 15 seats on the committee, not 20. That 
would be the same sports community to whom he gave a
<a href="http://www.info.gov.hk/gia/general/201410/15/P201410150980.htm" target="_blank">
speech</a>  last week, welcoming them back from a regional sports gathering and 
saying:</p>
<blockquote>&quot;This morning I made an effort to find time to inspect 
the site in Kai Tak where the new
<a href="http://www.hab.gov.hk/en/policy_responsibilities/Recreation_Sport_and_Entertainment_Licensing/mpsc.htm" target="_blank">
sports complex</a> is being built. This will be the largest sports facility in 
Hong Kong ever. The construction cost is estimated, and this is an early 
estimate, to be around at least $20 billion, and this is just the construction 
cost. And if you divide 7 million into 20 billion, even I can come up with a 
figure of at least three to four thousand dollars for every man, woman and child 
in Hong Kong, and it signifies a huge undertaking on the part of my Government 
to support the sports sector in Hong Kong.</blockquote>
<blockquote>Now, $20 billion doesn't 
count land costs, and we know how valuable, precious, that land is in Hong Kong. 
And, I have to be honest with you, at one stage the Government did consider the 
possibility of not building the sports complex on this site and using the site 
instead for housing units, which are very much in short supply.&quot;</blockquote>
<p>In other words, &quot;we made a choice, and are spending HK$20bn and a vast chunk of land on sports 
instead of housing&quot;. Incidentally, he or his speech-writer can't do basic 
arithmetic: $20bn divided by 7m people is not &quot;at least three to four thousand 
dollars&quot;, it is about $2,857, but it is still a lot of money, and its about 
$14,000 for each of the
<a href="http://gia.info.gov.hk/general/201105/18/P201105180083_0083_78980.pdf" target="_blank">
1.4m people who earn enough to pay salaries tax</a> in HK. Alternatively, he 
means that they now expect it to cost between $21bn 
and $28bn, plus land value. If he had only built homes, then that would have 
helped the Real Estate and Construction sector (18 votes) but not Sports (15 
votes) - so this gets him more electoral bang for your bucks - and let's be 
clear, this is not a project that could be funded by the private sector, unlike 
housing.</p>
<p>The Sports sector is actually a sub-sub-sector of the Election Committee, 
under the 60-seat &quot;Sports, Performing Arts, Culture and Publication&quot; sub-sector, 
under the 300-seat &quot;Labour, social services, religious and other sectors&quot; 
sector. There were
<a href="http://www.eac.gov.hk/pdf/chief/en/2012_CE_Report/2012ce_appendix_II.pdf" target="_blank">
2,358 registered electors</a> for the 60 seats in 2012 (or 39.3 electors per 
seat). The number of electors in the Sports sector is not disclosed separately. 
Of these 2,358 electors, only 209 were human, and 2,149 were &quot;bodies&quot; 
(associations, companies, etc). So, how many of them voted? None. In an 
indication of how rigged these constituencies are, there was no contest for any 
of the 60 seats in 2011. All of the 4 sub-sub-sectors were nominated 
uncontested. The 15 duly elected candidates in the Sports sector are
<a href="http://www.gld.gov.hk/egazette/pdf/20111549e/egn20111549851.pdf" target="_blank">
at this link</a>. Several of them are tycoons, or children of tycoons, not so 
many athletes and coaches.</p>
<h3>The meaning of &quot;broadly representative&quot;</h3>
<p>On the subject of the &quot;broadly representative nominating committee&quot; required 
by the Basic Law if universal suffrage is to be introduced, Mr Leung told the 3 
reporters last night:</p>
<blockquote>"[If] you look at the meaning of the words 'broadly 
representative,' it's not numeric representation... You have to take care of all 
the sectors in Hong Kong as much as you can...if it's entirely a numbers game 
and numeric representation, then obviously you would be talking to half of the 
people in Hong Kong who earn less than US$1,800 a month. Then you would end up 
with that kind of politics and policies."</blockquote>
<p>In other words, he claims that if the Election Committee was a fair 
cross-section of the population, then we would be economically doomed, so we 
must instead ensure that tycoons or at least wealthier people have 
disproportionate weight and that poor people are under-represented on the 
committee. There are several counter-arguments to this:</p>
<ul>
	<li>Leung and previous Chief Executives have substantially increased welfare 
	spending anyway - lacking a popular mandate results in trying to buy 
	popularity with hand-outs, such as the infamous
	<a href="http://www.scheme6000.gov.hk/" target="_blank">Scheme $6000</a> 
	handout to every permanent resident, electricity subsidies for all, repeated 
	waivers of rates and waivers of (already low) public housing rentals, the 
	increase in non-means-tested &quot;fruit money&quot; for over-70s, the $2 fare scheme 
	for anyone over 65, and loan guarantees for small businesses, to name just a 
	few.</li>
	<li>
	<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
	Article 107</a> of the Basic Law requires the HKSAR to both balance the 
	budget <u>and</u> keep the budget commensurate 
	with the growth rate of its GDP - in other words, spending as a proportion 
	of GDP should not rise. Any deliberately spendthrift or tax-and-spend 
	socialist Government would thus expose its budget to judicial review;</li>
	<li>The current electoral structure tends to result (as illustrated in 
	sports above) in massive infrastructure spending to favour vested interests 
	in the Election Committee, much of which spending is economically 
	questionable, such as the HK$72bn
	<a href="http://www.expressraillink.hk" target="_blank">Express Rail Link</a> 
	to Shenzhen, the <a href="http://www.hzmb.hk" target="_blank">road bridge</a> 
	to Zhuhai and Macau, the likely HK$150bn for the third runway and associated 
	infrastructure at HK Airport and the HK$8.2bn
	<a href="http://www.kaitakcruiseterminal.com.hk/" target="_blank">Kai Tak 
	Cruise terminal</a>. Oh and let's not forget the Cyberport and the massive 
	waste of land that is
	<a href="disneylandfill.asp" target="_blank">HK Disney-landfill</a>. Would a 
	democratically-elected CE be any worse?</li>
</ul>
<h3>The talks</h3>
<p>Leung's comments yesterday makes clear that the two Governments have no 
intention of rebalancing the Election Committee to make it some kind of 
proportional representation nominating committee. Even if they propose that 
<a href="corpvote.asp" target="_blank">corporate voting</a> should be replaced with director voting, it will continue to be 
stacked in favour of tycoons and business interests. It is to be &quot;broadly 
representative&quot; of tycoons, not of the general public. The Government is not 
going to give every registered construction worker a vote in the construction 
sector, for example, or every shop assistant a vote in the retail sector, nor 
are they going to create a sector representing retired people, house-spouses and 
adult students.</p>
<p>However, as we said in our article <a href="twooptions.asp">
One HK, two possible outcomes</a> (9-Oct-2014), the composition of the committee 
and the way it is elected are secondary issues, because if the NPC Standing 
Committee does not review its decision of 31-Aug-2014 to require a 50% 
nomination threshold (in effect, a pre-election), then no amount of fiddling 
with the committee in local legislation will make it possible for a popular 
pro-democracy candidate to advance to the general election. The NPCSC decision 
raises the nomination threshold from its previous level of 12.5% (1/8), making 
it four times harder to be nominated than it was in 2012. That would not be 
gradual and orderly progress, but a great leap backwards. In both 2007 and 2012, 
a pan-democratic candidate was successfully nominated, but had no chance of 
winning, and now, he or she would have no chance of being nominated.</p>
<p>The Basic Law, passed in 1990 and effective since 1-Jul-1997, has never been 
amended; by comparison, the US constitution was
<a href="http://en.wikipedia.org/wiki/List_of_amendments_to_the_United_States_Constitution" target="_blank">
amended</a> 3 times (with 12 amendments) in its first 15 years from 1789 to 
1804. There are a number of Basic Law areas that can and should be cleaned up 
and clarified (right of abode, for example), but for now, the prospect of 
admitting that there is a single flaw in the Basic Law is beyond Beijing's 
contemplation. To amend the Basic Law under Article 159 would need a 2/3 
majority of both the Legislative Council and the 36 HK delegates to the National 
People's Congress, as well as the approval of the full NPC, not just its 
Standing Committee.</p>
<p>The Basic Law makes clear that a nominating committee is required, so 
introducing civic nomination to bypass this would involve Basic Law amendment 
and is practically a non-starter. However, that does not completely rule out the 
idea of civic <em>recommendation</em>, where a name with sufficient subscribers 
could be submitted to the Nominating Committee.</p>
<p>The students in today's talks would be well-advised not to keep pushing for 
civic nomination but instead they should insist on reducing the nomination 
threshold. The mechanism is simple: the Chief Executive must restart the 
so-called 5-step process by sending a new report to the NPCSC on the &quot;actual 
situation in Hong Kong&quot;, with the recommendation of returning to the 1/8 
nomination threshold or possibly 1/8 plus 1 vote (that is, 151 nominations). 
Under the previous system, each member can only nominate one candidate, so that 
way, there will not be more than 7 candidates, and very likely there will be 
fewer. A compromise between these thresholds might be 20% plus 1 vote (that is, 
241 nominations), in which case there cannot be more than 4 candidates. </p>
<p>Having resolved the primary issue with the NPC, HK can then move on, through 
local legislation, to the secondary issues of making the Nominating Committee 
more broadly representative (however you define it), and providing for
<a href="http://en.wikipedia.org/wiki/Instant-runoff_voting" target="_blank">
Instant-runoff voting</a> in which the candidates are ranked on the public 
ballot in order of the elector's preference.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1680">Leung, Chun Ying</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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