
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

<script type="text/javascript">document.title="Freedom and the future of China";</script>

	<div class="summary">This is the text of a High Table dinner speech delivered by Webb-site founder David Webb to the students of Chi Sun College, University of Hong Kong, this evening. Hyperlinks have been added.</div>

<h2 class="center">Freedom and the future of China<br>
<span class="headlinedate">30 October 2018</span></h2>

<p><a href="https://www.youtube.com/watch?v=9LepwEK_EGU" target="_blank">
<strong>Click here for video</strong></a></p>
<p>Good evening. It’s a real pleasure to be here at the University of Hong Kong, 
addressing future leaders in all walks of life.</p>
<p>I can confidently say that I have lived in Hong Kong longer than most of you, 
as most of you are under the age of 27. I arrived in 1991 as a 26-year-old 
investment banker. I worked all over Asia doing IPOs and mergers and 
acquisitions for 3 years, and then moved to work for a local tycoon as an 
in-house adviser for 4 years. In 1998, I retired and established Webb-site.com, 
a non-profit platform which I personally fund, to promote better corporate and 
economic governance. For perspective, that was the same year that a search 
engine called Google was launched.</p>
<p>Webb-site.com takes around half of my time. In the other half, I research and 
invest in Hong Kong-listed smaller companies, exploiting some of the market 
inefficiencies that come from bad corporate governance. For those of you 
studying economics, it is what 
<a href="https://en.wikipedia.org/wiki/George_Akerlof" target="_blank">George Akerlof</a> called the lemon problem. Think of 
me as an expert mechanic, walking around a second-hand car lot in which there 
are no warranties, and all of them are discounted for the risk of being lemons. 
Not only that, but as most listed companies have a controlling shareholder, I am 
getting into the back seat – so I must find well-maintained cars with good 
drivers.</p>
<p>By avoiding most of the crooks most of the time and getting a substantial 
discount on good companies, I have been able to outperform the market by an 
average of 12% per year since 1995, something that would be nearly impossible if 
we ever got all the legislative and regulatory reforms that I and others have 
been calling for, because the lemon-discount would then be removed. That would 
raise stock valuations, attract more companies to the public markets, and lower 
the cost of capital for businesses across the economy.</p>
<p>Unfortunately, the Hong Kong Government has chosen to 
<a href="listing170915.asp">move in the opposite 
direction</a>, by allowing the listing of second-class shares with lower voting 
rights, by leaving HKEX as a monopolistic for-profit regulator with all the 
conflicts of interests that involves, by preventing access to justice through 
class actions, and in numerous other ways.</p>
<p>Of course, this restriction of voting rights is entirely consistent with 
Chinese Government policy, and that is perhaps the most worrying thing about it 
– we could end up with a country in which the people have no real votes for 
their Government and no real votes for their capital, leaving a cosy 
relationship of new-economy tycoons and the Party together controlling most of 
the economy. That may be socially acceptable if the economy appears to be going 
well and standards of living are still rising, but it is a 
<a href="oligarchy.asp">toxic recipe</a> for 
social unrest if the economy stalls.</p>
<p>And that brings me to the central topic of tonight’s speech: freedom.</p>
<ul>
	<li>If you are studying biology, then you will appreciate that Darwinian 
	adaptation and survival of the fittest through competition brought about 
	life on Earth as it is today. There was no divine central-planner making us 
	in his or her image.</li>
	<li>If you are studying engineering, you will appreciate that the utility of 
	a robot depends on its degrees of freedom. If it can move in 3 dimensions, 
	and pitch, roll and yaw on 3 axes, then its 6 degrees of freedom make it 
	more productive than a fixed arm with a single elbow joint.</li>
	<li>If you are studying economics, then you will appreciate that the greater 
	the constraints on freedoms, the lower the economic output.</li>
</ul>
<p>The simple fact is that there is no large economy on Earth that has 
reached high levels of personal income while maintaining the constraints on 
freedoms that China currently imposes.</p>
<p>In the first 25 years after reforms began in 1979, the Chinese Government 
picked all the <a href="../codocs/DMW150822.pdf">low-hanging economic fruit</a>. Workers can now choose where they 
work. Factories can choose what to make – there are no more production quotas. 
Farmers can choose what crops to grow and sell them at market prices. Private 
property rights are now largely respected. The Chinese stock markets reopened in 
1990 after 41 years of closure. But despite all the rhetoric about “deepening 
reforms” and “letting market forces play a greater role”, the reality is that 
reforms stalled over 10 years ago, and most of the economic growth you see since 
then is unsustainable credit-fuelled infrastructure and property investment.</p>
<p>You can generate GDP from construction activity, but if the things you build 
don’t produce an economic rate of return, then you’ve just wasted resources and 
increased debt, and the more you have built, the harder it is to find 
economically viable projects. The 
<a href="https://en.wikipedia.org/wiki/Diminishing_returns" target="_blank">law of diminishing returns</a> takes hold.</p>
<p>The Chinese Government still directly controls vast swathes of the old 
economy, including banks, energy, electricity, petrochemicals, metals, airlines, 
shipping, telecommunications and of course the media.</p>
<p>For sure, they created the illusion of market reforms by listing minority 
shareholdings in most of these sectors, but the Party cannot bring itself to let 
go of control. In fact, it has been heading the other way, by embedding itself 
in the Articles of Association of companies, requiring that the board of 
directors must consult the company’s Party Committee before making major 
decisions. That of course reflects the current reality of a state-owned 
enterprise, but if the economy is to prosper, then the state has to stop owning 
and controlling enterprises. These changes to corporate constitutions signal the 
opposite intent.</p>
<p>Put simply, the leadership appears to believe that, having raised the economy 
since 1979 from abject centrally-planned poverty by relaxing basic controls, it 
can stop there and centrally-plan the rest of the journey to prosperity, raising 
GDP per capita from where they are today, about one quarter of OECD levels, 
without giving up any more controls.</p>
<p>In November 1978, 40 years ago next month, Deng Xiaoping visited Singapore, a 
country not known for its political freedoms and one which has prospered 
economically while continuing to hold controlling interests in large parts of 
the economy. In essence, Singapore is a corporate conglomerate with the perks of 
statehood. China’s leadership has held out Singapore as proof that it can pursue 
the same economic path, but what they fail to recognise is that Singapore is a 
small, parasitic, city-state economy that benefits as an oasis of stability from 
the chaos and economic mis-management around it.</p>
<p>Parasites by their nature must be small, feeding off the scraps from larger 
animals. China is too big to be a parasite of anything. It simply cannot succeed 
by scaling up the Singapore model by a factor of 250. To think otherwise would 
be to believe in intelligent design rather than evolution, to believe in central 
planning rather than the creative destruction of free markets.</p>
<p>Similarly, Hong Kong, while it is not a state conglomerate, is also a 
parasitic economy that has benefitted hugely from the constraints on freedoms in 
China by acting as an entrepôt and running the only international capital market 
on Chinese soil.</p>
<p>Hong Kong has prospered, to a large extent, because of China’s glacial pace 
of reforms. 40 years after Deng’s visit to Singapore, Chinese citizens are still 
not free to move capital in and out of the country. They still get a filtered 
view of the world behind the Great Firewall of China, reading state-controlled 
stories in state-controlled media, until they travel overseas and discover what 
they don’t know. They are not even free to make fun of the leadership, as 
<a href="https://www.bbc.com/news/blogs-china-blog-40627855" target="_blank">Winnie 
The Pooh</a> will confirm. They have only just been allowed to have 
<a href="https://en.wikipedia.org/wiki/One-child_policy" target="_blank">two children 
rather than one</a>, and claiming education and healthcare benefits still depends on 
the household registration or
<a href="https://en.wikipedia.org/wiki/Hukou_system" target="_blank">Hukou system</a>, restricting labour mobility.</p>
<p>The reality, as predominantly Catholic countries like Ireland and Italy will 
confirm, is that the best form of mass contraception is economic growth. If Mao 
Zedong had been a capitalist, China would have been an economic powerhouse by 
the 1970s and would probably have 600 million fewer people today, and they would 
be enjoying a much higher GDP per capita while putting less pressure on water 
and other resources. It is one of the greatest ironies that Mao’s face appears 
on the that instrument of capitalism, the 100 RMB note.</p>
<p>Now, for those of you considering whether to remain in Hong Kong for your 
careers, you may feel somewhat concerned about the increasing grip of the 
motherland, or perhaps fatherland, on our affairs. Allow me to lay out some 
facts to help you make your decisions.</p>
<p>The promises of the Basic Law only last another 28 years and are subject to 
NPC Standing Committee interpretation. In 2047, you will be in your late 40s, 
with young children and in the most productive period of your life. Sooner than 
that, ten years from now, you will be in your early 30s and the Basic Law 
promises will have 18 years remaining.</p>
<p>In 1979, when Hong Kong Governor MacLehose visited Beijing, similar 
uncertainty was beginning over the New Territories lease, which had 18 years to 
run. The uncertainty led to a run on the Hong Kong Dollar until the peg was 
introduced in 1983, preceding the Joint Declaration in 1984. So unless China 
undergoes far more rapid political and economic reform in the next 10 years, in 
2028 Hong Kong people will begin seeking assurances and perhaps a firm extension 
of the Basic Law. Otherwise, if you plan on becoming a barrister, will the Court 
of Final Appeal even exist in 2048, or will disputes be settled in the Guangdong 
High People’s Court?</p>
<p>So, should you stay and build your future and your children’s future here, or 
join a new brain drain, studying overseas for your second degree and staying 
there afterwards?</p>
<p>Hong Kong’s future is inextricably tied to China’s. There are plenty of 
reasons to be pessimistic. Political candidates are now filtered by civil 
servants for their views before being allowed to run for office, in case those 
views might actually get them elected. Even if they were elected, a cabal of 
tycoons via functional constituencies controls so many seats in the Legislative 
Council and on the Chief Executive’s election committee that the Government 
can’t function without their consent, and naturally protects their interests 
ahead of the public interest.</p>
<p>A seller of certain books not available in the mainland was abducted. A 
foreign journalist in Hong Kong lost his employment visa without breaking any 
law. Soon it will be illegal to <a href="anthem.asp">turn your back on the national anthem</a>, unless 
our courts decide that this is protected as freedom of expression under the 
Basic Law, and until the NPC Standing Committee overrides our courts with an 
interpretation. The Central People’s Government does not understand that respect 
is a state of mind that can only be earned, not commanded.</p>
<p>Elsewhere in our country, Muslims in Xinjiang are being rounded up and 
<a href="https://www.youtube.com/watch?v=qmvyjwLxC5I" target="_blank">re-educated in concentration camps</a> about the wisdom of the Party. And soon, the 
Chinese surveillance state, which co-opts the new economy giants to monitor 
behaviour, will give a social credit score to each citizen, perhaps denying 
potential troublemakers an exit permit to travel, a university place, or a job. 
Since 1989, the state has never forgotten that it’s the smart people who lead 
uprisings, and it’s the smart people who go to university – and that’s why you 
are all seen as a potential threat. Occupy Central just reinforced that 
perspective.</p>
<p>Meanwhile in Hong Kong, the latest political mantra is about the so-called 
“<a href="https://www.bayarea.gov.hk" target="_blank">Greater Bay Area</a>”, which is just a rebranded version of what Tung Chee Hwa’s 
administration called the “<a href="https://www.info.gov.hk/info/gprd/pdf/F_GPRD_Overview.pdf" target="_blank">Greater Pearl River Delta</a>”. Call it what you like, 
but the economic reality is that the area includes 3 different legal, tax, 
immigration and customs jurisdictions, and unlike San Francisco’s Golden Gate 
Bridge, you need 
<a href="https://www.youtube.com/watch?v=NO3bNlB9j9o" target="_blank">3 different insurance policies</a> just to cross the bridge from 
Hong Kong to Macau, passing through mainland jurisdiction along the way, if you 
can get a bridge permit. Hong Kong and Guangdong business people have always 
co-operated to the extent possible, but further economic integration is limited 
by these barriers, as well as mainland capital controls.</p>
<p>If China’s government truly believed in the Greater Bay Area concept and in 
Hong Kong’s “System”, including its freedoms and free markets, then it would 
enlarge the Special Administrative Region to cover the whole of the Greater Bay 
Area and adopt the Hong Kong “System” within it. That would necessitate a 
boundary between the Greater Bay Area and the rest of China, until it too adopts 
those freedoms.</p>
<p>It was always the hope of the 50-year transition, or indeed 63 years from the 
Joint Declaration in 1984, that China would within that timeframe become an open 
and prosperous country, and the boundary with Hong Kong would become as 
invisible as the one between New York and New Jersey. China would become “One 
Country, One System”, and the “System” would be freedom and free markets rather 
than authoritarianism and central planning. The over-bearing presence of the 
state in people’s lives and in the economy would give way to the freedoms and 
consequential prosperity that other countries enjoy.</p>
<p>I remain optimistic about reaching that destination, because I think the 
People of China will not accept anything less. Failure to reform is not a viable 
option. But I am uncertain about which path we will take to get there. There are 
in essence two paths:</p>
<ul>
	<li>Ideally, a new, enlightened leadership would emerge in Beijing and 
	pursue civil liberties, free markets and gradual introduction of democratic 
	accountability. Call that top-down reform. There is no sign of that at 
	present, rather the opposite.</li>
	<li>Alternatively, the Party will continue to maintain and even tighten its 
	grip until it drives the economy into crisis. The Party governs by implicit 
	consent of the People and by jailing a relatively small opposition. It 
	receives that consent only so long as the people’s standard of living is 
	rising, and their savings and other property are protected. If those 
	conditions change, an urbanised, educated and well-travelled cognoscenti 
	would lead hopefully-peaceful mass protests of such a scale that oppression 
	is impossible. Call that bottom-up reform, or a Chinese Spring.</li>
</ul>
<p>One way or the other, top-down or bottom-up, I believe that we will get 
there, and by 2047 China will be an open, democratic and truly prosperous 
country, with one “System”, the one that works. In the meantime, conditions in 
Hong Kong will probably get worse before they get better. In the second path, a 
mainland economic crisis followed by a Chinese spring would be accompanied by a 
period of economic disruption in Hong Kong. Whether you wait for the broad, 
sunlit uplands is up to you and depends on the alternatives available to you. In 
2047, I will turn 82. I hope to be around to see it.</p>
<p>Thank you for your attention.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11118">UNIVERSITY OF HONG KONG (THE)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=145">Government policy - general</a></li>
				
				<li><a href="/dbpub/subject.asp?c=35">Immigration</a></li>
				
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