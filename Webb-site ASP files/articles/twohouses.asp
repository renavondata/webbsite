
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

<script type="text/javascript">document.title="Two houses, one rating";</script>

	<div class="summary">So it was her house and her basement? We dig deeper into York Road and explain why it matters.</div>

<h2 class="center">Two houses, one rating<br>
<span class="headlinedate">20 March 2012</span></h2>
<p>What sticks in the public's throat most about CE candidate
<a href="../dbpub/natperson.asp?p=2656">Henry Tang Ying Yen</a>'s scandals? It 
is probably not so much that he cheated on his wife, which at least don't 
involve financial gain, but the scale of the unauthorised building works at 7 
York Road, and the fact that he initially lied about it and then allowed his 
wife to
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=119828&amp;con_type=1" target="_blank">
shoulder the blame</a>. The house, completed in 2007, has a basement of hidden 
underground rooms, reportedly including space suitable for a wine cellar, 
tasting room, home theatre, gym and whirlpool bath. After an initial inspection, 
the Building Department
<a href="http://www.info.gov.hk/gia/general/201202/17/P201202170579.htm" target="_blank">
announced</a> on 17-Feb-2012 that the basement was about 19m x 11m x 3.5m high. 
That area of 209 sq m is 2,250 sq ft, which is the figure you've seen in the 
media, but it is probably an internal measurement, so to convert that into 
saleable area you have to add the thickness of external walls - say 23cm, which 
takes it up to 2,400 sq ft.</p>
<p>On 14-Feb-2012, the <em>Standard</em>
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=119687&amp;con_type=1" target="_blank">
reported</a>:</p>
<blockquote>&quot;Tang said that there was a garage in the basement of his 
family's property at No 7 at the time of purchase, and the family carried out 
digging works to deepen the garage for storage...He admitted the excavation work 
may have been too deep and he has hired a professional to investigate.&quot;</blockquote>
<p>If that report is accurate then it reflects misleading statements, because 
the site was purchased in 2002, and whatever garage existed then must have been 
demolished when the new home was built. </p>
<p>5A York Road was acquired by Bluehouse Investments Ltd (<strong>Bluehouse</strong>, 
BVI) for HK$46.5m in 1996 and 7 York Road was acquired by On-Power Ltd (<strong>On-Power</strong>, 
BVI) for $36m in 2002. In his
<a href="http://www.legco.gov.hk/yr03-04/english/panels/ca/papers/cacb2-3102-1e-scan.pdf" target="_blank">
21-Jun-2004</a>,
<a href="http://www.legco.gov.hk/yr05-06/english/panels/ca/papers/cacb2-2766-1e-scan.pdf" target="_blank">
26-Jun-2006</a>,
<a href="http://www.legco.gov.hk/yr06-07/english/panels/ca/papers/ca0725cb2-2537-1-e.pdf" target="_blank">
1-Jul-2007</a>,
<a href="http://www.legco.gov.hk/yr07-08/english/panels/ca/papers/cacb2-2643-1-e.pdf" target="_blank">
26-Jun-2008</a> and
<a href="http://www.legco.gov.hk/yr08-09/english/panels/ca/papers/cacb2-2338-1-e.pdf" target="_blank">
23-Jun-2009</a> declarations of interests, Henry Tang was a director of both 
companies and held one of the two shares in each company. His wife presumably 
held the other share in both companies. The companies held the properties &quot;for 
self-use&quot;. By his declaration on
<a href="http://www.legco.gov.hk/yr09-10/english/panels/ca/papers/cacb2-2181-1-e.pdf" target="_blank">
25-Jun-2010</a>, he no longer had a shareholding in On-Power and he held both 
shares of Bluehouse. Tang
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=119828&amp;con_type=1" target="_blank">
has said</a> that he and his wife were having difficulty communicating - but 
clearly not so much difficulty that they were unable to arrange a share swap, 
and apparently not so much difficulty that she moved into No.7 - because they 
have said that it was kept empty.</p>
<p class="regbox">Policy note: holding the properties through offshore companies 
allowed the couple to legally avoid stamp duty on the transfers of 
half-interests in the houses. <a href="stampout.asp">As we've said before</a>, 
stamp duty should be abolished, partly because it is a tax that the wealthy can avoid 
anyway through corporate structuring, as long as the transferee trusts the 
transferor to guarantee that there are no hidden liabilities in the 
property-owning company. Perhaps, given that Henry Tang has shown how to avoid&nbsp; 
stamp duty, he will see the wisdom of abolishing it if he becomes CE.</p>
<p>But the interesting thing about all this is that, having separated the 
ownership of the two houses, Henry's efforts to portray 7 York Road as &quot;her 
house&quot; with <u>her</u> basement, and 5A York Road as &quot;his 
house&quot;, are somewhat undermined by a look at the Valuation List at the Ratings 
and Valuation Department, which is now open for inspection. This shows that the 
two houses are rated as a single tenement (or dwelling). To save you the pain of 
navigating the <a href="https://www.rvdpi.gov.hk" target="_blank">arcane site</a> 
which is only open for viewing from mid-March until 31-May (or about 7 weeks) 
each year, here's what you get:</p>
<img class="center" alt="" src="../images/5A&7YorkRoadRateable.png">
<p>Being rated as a single tenement, there is a single rates bill for the 
combined houses. A check of the property information behind the pay-wall reveals 
that the combined saleable floor area is 722.4 sq.m., or 7,776 sq ft. So the 
rateable value is HK$425,000 (US$54,768) per month or about $54.66 per sq ft. 
Presumably that floor area excludes the newly-discovered 2,400 sq. ft. of 
basement, which bumps it up to 10,176 sq ft. One might make a generous discount 
(say 50%) for the fact that it is mostly underground, but that still means the 
extra space is worth about $27.33 per sq ft per month, so call that a rateable 
value of $787,104. Being in New Kowloon, the <a href="leases1.asp">
ground rent on the land leases</a>, payable to the Government as landlord, has 
since 1-Jul-1997 been 3% of rateable value, and the rates are 5% of rateable 
value, making a total of 8%, which means that the couple has been underpaying 
rates and rent by about $63k per year at current levels (less in the past).</p>
<p>Then there's the bigger issue that House 7 probably breaches the plot ratio 
in the outline zoning plan, which zones the land R(C)1, with a maximum plot 
ratio of 0.6, although it does allow 3 stories. We can safely assume that the 
visible part of the house maximised the plot ratio.</p>
<p>7 York Road was purchased by On-Power in a mortgagee sale by
<a href="../dbpub/orgdata.asp?p=420">Chong Hing Bank Ltd</a> (1111). The 
agreement was dated 17-Jun-2002, just 2 weeks before Henry Tang joined the 
Government as Secretary for Commerce, Industry and Technology on 1-Jul-2002. The 
previous owner, <a href="../dbpub/orgdata.asp?p=165966">Hing Lee Construction Co 
Ltd</a>, bought the site on 14-Nov-1996. Hing Lee went into liquidation on 
12-May-1998 and the company was dissolved by creditors' winding-up on 
2-Jul-2004.</p>
<h3>Why it matters</h3>
<p>Henry's Basement matters for the simple reason that most people in HK, if 
they can afford to buy rather than rent property, spend a large part of their 
careers paying off the mortgage on a flat typically one third of the size of 
Henry's Basement. The price they pay reflects the land premium which the 
developer paid to the Government for the amount of floor area they were 
permitted to build. Mr &amp; Mrs Tang paid no such premium for their extra floor 
area, or rates and ground rent on it afterwards. He's cheated the system and the 
people.</p>
<p>Of course, the Tangs aren't the only ones with illegal additions to their 
houses, but then not everyone is running for Chief Executive. When your editor 
shopped around the housing market a few years back, about half the houses we 
viewed had some form of illegal floor area - sometimes an extra floor on top, 
sometimes a permanently glassed-in terrace or balcony, and sometimes a basement 
beneath. Most non-reclaimed land in HK is on a slope, so by design, houses are 
often built on stilts with longer stilts at the front to level the platform, and 
this leaves room for basements underneath, sometimes dug back into the hillside. 
These are of course very difficult to detect from the air.</p>
<p>The result is that houses often sell for substantially more per sq ft than 
you might expect, even after allowing for the outdoor area and not having 
neighbours walking on your ceiling as flat-dwellers have. Buyers are factoring 
in the hidden floor area not seen in the headline calculation, or the potential 
for that floor area. They feel almost obligated to exploit it to justify the 
price they paid. Developers in turn make special effort to leave enough space 
under the stilts for additional space to be created after the the occupation 
permit has been granted. This culture has developed because often all that the 
Buildings Department has done when it finds an illegal structure is to decide 
that it is not unsafe, and then place a warning letter on the land registry, 
which still allows the enlarged property to be transferred freely, albeit with 
the risk that it will one day be enforced.</p>
<h3>The biggest panel</h3>
<p>Sometimes the Buildings Department does take action against what it regards 
as illegal structures, and sometimes the owners appeal to
<a href="../dbpub/officers.asp?p=29574&amp;hide=Y">Buildings Appeal Tribunal</a>. In fact 
appeals happen so often that the Panel of members who sit in such cases 
currently amounts to 463 people, which makes it the biggest statutory body in 
HK. A current <a href="../codocs/BuidlingHearings1203.pdf" target="_blank">list of appellants</a> 
includes <a href="../dbpub/positions.asp?p=18730">William Duncan Stone</a>, who 
happens to be a High Court Judge. On 1-Dec-2011 he was appointed as a Chairman 
of the Market Misconduct Tribunal. Another appellant, who happens to be his 
neighbour, is <a href="../dbpub/positions.asp?p=10829">Richard Arthur Witts</a>, 
who often appears as an expert witness in the MMT, and tells Webb-site that the 
case relates to
<a href="http://www.bd.gov.hk/english/services/index_faqA.html" target="_blank">
storage cupboards</a> on his roof. Well if the Buildings Department is tackling 
that, then they can tackle anything.</p>
<h3>Ongoing investigation</h3>
<p>Whether or not Henry Tang is appointed as Chief Executive, there will likely 
be an ongoing investigation into:</p>
<ul>
	<li>whether he and/or his wife knowingly contravened the Buildings 
	Ordinance by carrying out the building works
	<a href="http://www.hklii.hk/eng/hk/legis/ord/123/s14.html" target="_blank">
	without consent</a> from the Building Authority (<a href="http://www.hklii.hk/eng/hk/legis/ord/123/s40.html" target="_blank">maximum 
	penalty</a>: 2 years in jail); and</li>
	<li>whether the building plans filed were deliberately misleading, if 
	they did not show a basement that was already planned for (maximum penalty: 
	3 years in jail).</li>
</ul>
<p>The first issue should be easy to prove - it is clear that the basement 
was not approved, and beyond belief that neither of them knew that it was being 
built. According to his filings, Henry Tang was a director of On-Power at the 
relevant time and his wife has said publicly that she oversaw the construction. 
The second possible offence may depend on forensic evidence obtained by further 
inspection of the building, so let's hope the authorities don't allow the 
basement to be filled in until the case is over. </p>
<p>The law is explained in more detail in a
<a href="http://www.legco.gov.hk/yr11-12/english/panels/dev/papers/devcb1-1201-1-e.pdf" target="_blank">
paper</a> filed by the Government with LegCo, pages 3-6. Regardless of whether 
Henry Tang becomes CE, if the Government fails to prosecute, then the public 
interest in this case demands that it must explain why. It is then possible that 
someone would step in and launch a private prosecution, as Grenville Cross SC, 
former Director of Public Prosecutions, recently pointed out. If Tang does 
become CE, then the focus will be on how the Government's decision to prosecute 
or not is made.</p>
<p>As a result of the focus on Henry Tang's address, we have also noted that 
right opposite his house, at 6 York Road, is the Kowloon Sub-Office of the 
Liaison Office of the Central People's Government in the HKSAR. Can this really 
be a coincidence? We wonder when and why they moved there (presumably some time 
after 1-Jul-1997) and whether they noticed anything as the builders came and 
went from number 7.</p>
<h3>Looking through muck</h3>
<p>We couldn't help noticing that Donald Tsang's snappily-named
<a href="../dbpub/officers.asp?p=1857463">Independent Review Committee for the 
Prevention and Handling of Potential Conflicts of Interests</a> (like whether or 
not to prosecute your wife) is up and running with a
<a href="http://www.irc.gov.hk/" target="_blank">web site</a> and this image on 
the home page:</p>
<img class="center" alt="" src="../images/ircSmog.jpg">
<p>What would otherwise be a beautiful scene (with a blue-tinted sky) is marred 
by a thick brown layer of smog. How apposite.</p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=165966">HING LEE CONSTRUCTION COMPANY, LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=11371">Tang Kuo, Lisa Yu Chin</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2656">Tang, Henry Ying Yen</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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