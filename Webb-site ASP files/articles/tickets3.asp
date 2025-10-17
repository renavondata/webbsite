
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

<script type="text/javascript">document.title="Carrie Lam's latest assault on free markets";</script>

	<div class="summary">The Government is threatening to broaden rather than repeal a restriction on the resale of event tickets in HK, a restriction which is probably unconstitutional anyway. This runs against the interests of event organisers and performers who benefit from the secondary market as we explain. It also runs against the broader public interest in consumer choice. Let the market function, and repeal section 6 of the POPE Ordinance. What next - a restriction on reselling wine or IPO shares for a profit?</div>

<h2 class="center">Carrie Lam's latest assault on free markets<br>
<span class="headlinedate">17 April 2018</span></h2>

<p>It seems that the HK Government, lacking a popular mandate and fearful of any 
protest whatsoever, sometimes feels compelled to intervene and stomp all over 
the free market in response to any populist issue, regardless of the harm it may 
cause to HK's economy and reputation. The latest intervention comes from Chief 
Executive Carrie Lam,
<a href="http://news.rthk.hk/rthk/en/component/k2/1390674-20180411.htm" target="_blank">
who is considering</a> capping prices for event tickets at no more than their 
face value, after a legislator complained that tickets for a popular comedian's 
event were fetching premiums in the secondary market.</p>
<h3>The Basic Law and the POPE Ordinance</h3>
<p>Reselling goods and services is the essence of commerce and free markets, but 
if that "good" is an event ticket then its resale attracts the derogatory term 
"scalping", as if to compare it to the somewhat illegal activity of removing the 
skin from someone's head. And yet, if Carrie Lam has read the Basic Law (we 
believe that she has), then she would know that under
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Article 105</a>, the HKSAR shall "protect the right of individuals and legal 
persons to the acquisition, use, disposal and inheritance of property". That 
includes event tickets, unless the ticket contract prohibits transfer.</p>
<p>As we've <a href="tickets2.asp">said before</a>, there is already 
a draconian anti-market law in HK,
<a href="http://www.hklii.hk/eng/hk/legis/ord/172/s6.html" target="_blank">
section 6</a> of the Places Of Public Entertainment (<strong>POPE</strong>) 
Ordinance, which bans ticket resales (at any price) in a "public thoroughfare, 
or in the entrance hall of, or approaches to" a POPE (even if you are not 
running a business). The same section bans resale above face price, regardless 
of location within HK. However, the section only applies to POPEs licensed under 
the ordinance. A separate
<a href="http://www.hklii.hk/eng/hk/legis/reg/172D/s2.html" target="_blank">POPE 
(Exemption) Order</a> exempts places managed by the Government's Leisure and 
Cultural Services Department or the Home Affairs Department from the licensing 
requirement in section 4, so section 6 does not apply to such places, including 
many of HK's largest venues.</p>
<p>Section 6 is probably void for lack of constitutional necessity, although 
nobody facing a HK$2,000 fine (and no jail time) has ever felt it worth risking 
millions in legal fees (or seeking legal aid) to contest the point. For a restriction on a Basic Law 
right (in this case, the right to dispose of your property) to be 
constitutional, it must have a legitimate purpose, and the retriction must be 
rationally connected and "proportional" - no more than is necessary to achieve 
that purpose. It may also be necessary to show that the objective is 
sufficiently important to justify limiting a fundamental right (<a href="http://legalref.judiciary.hk/lrs/common/ju/ju_frame.jsp?DIS=45653&amp;currpage=T" target="_blank">HKSAR 
v Leung Kwok Hung</a>, para 33-39, Court of Final Appeal, FACC1/2005).</p>
<p>But rather than repeal section 6 and allow a free market in tickets 
for events at all venues, Mrs Lam
<a href="http://www.news.gov.hk/eng/2018/04/20180411/20180411_114658_882.html" target="_blank">
is considering</a> extending the restrictions to Government venues, raising the 
penalty and even requiring tickets to be 
issued to registered names rather than to bearer.</p>
<p>A so-called "real-name" system would require identity checks on the 
entrances, slowing admission to a crawl and causing problems for tourists who 
left their passports at the hotel, children without ID cards and so on - their 
guardians would have to bring birth certificates. A real-name system would also 
allow the Government to track who is attending events or shows that have 
politically sensitive content, and who their friends in the same booking are. So 
maybe you shouldn't attend the next performance of <em>"An evening with Benny 
Tai and Joshua Wong"</em>.</p>
<h3>The secondary market benefits performers</h3>
<p>The secondary market benefits performers in several ways, by raising the 
overall proceeds to the ticket issuer and providing more flexibility in sales. 
If, weeks or months before an event, you have a choice between two otherwise 
identical tickets in the primary market, one of which permits resale and the 
other does not, then you will prefer the unrestricted ticket and will pay more 
for it than the restricted ticket. You don't know with 100% certainty that you 
will be able to attend the event. You might change your plans, or someone who 
values attendance more than you do might subsequently want to buy your ticket. 
That's reflected in the "time value" of the option. Part of that option value 
gets transferred ultimately to the performers in their fees. That's one of the 
reasons (apart from the sheer headache of identity checks) that organisers don't 
favour a real-name system.</p>
<p>Furthermore, a lesser-known fact about ticket agencies such as
<a href="https://www.getmein.com/" target="_blank">GetMeIn</a>,
<a href="https://www.viagogo.com/" target="_blank">Viagogo</a>,
<a href="https://www.seatwave.com/" target="_blank">Seatwave</a> and
<a href="https://www.stubhub.com/" target="_blank">Stubhub</a> is that 
organisers and promoters of events often hold back some tickets and release them 
over time via these secondary market platforms, at market prices. Prices on 
these platforms may be lower or higher than face value, depending on an event's 
popularity, but the organisers have a legitimate interest in maximising the 
overall proceeds of ticket sales, and so do the performers who usually get a 
percentage. This is what airlines and hotels call "yield management" - they 
release some seats and rooms for early booking at lower prices, then hope to 
sell other tickets to less price-sensitive travellers nearer the date, and if 
all else fails, they will often release final tickets at bucket-shop prices (or 
points redemption) to clear the inventory and maximise the overall return.</p>
<p>The secondary market for event tickets also means that professional traders 
in the primary market are willing to take inventory risk and underwrite the 
event months before it occurs. They take risk that the event may turn out to be 
less popular, or even that the organiser will lay on extra dates for the show, 
increasing supply and devaluing their inventory. Meanwhile the organiser gets to 
lock in the sales and finance the event.</p>
<p>There was much outcry in the UK in 2012 when the practice of organisers 
gradually releasing concert tickets via the secondary market was revealed in a
<a href="https://www.youtube.com/watch?v=WWlnL8drSdw" target="_blank">TV 
documentary</a> which put undercover reporters into two of the agencies, but it 
should not have been surprising. Some of the marketing practices of those 
agencies may have been deceptive, but the fact remains that customers were and 
are willing to pay the secondary market price to attend the event. Nobody forces 
them to do so. If the Government bans reselling, then it will simply go 
underground, resulting in more fraud and fake tickets, and the Government will 
also not collect any profits tax from agencies and traders.</p>
<p>Sponsors of events often get allocated blocks of free, discounted or priority 
bookings in return for underwriting part of the event costs, and those tickets often make 
their way into the secondary market. The sponsor may not always directly 
benefit, but if they give tickets to employees, customers or suppliers who then resell or use them, then 
they get goodwill (and nobody pays tax on that). That makes 
sponsors more willing to sponsor events in the first place, again helping to 
finance the events.</p>
<p>To create excitement about an event, an organiser might well put a 
relatively low face value on an event that it expects to be popular, and release 
more of them via the secondary market once a market price has been established. 
The organiser might allocate a quota of tickets to those who are willing to 
physically queue up overnight, because it creates media coverage and a stronger 
impression of demand and scarcity for the secondary market, or for "extra" 
performance dates which are later released. People may perceive a "premium" in 
the secondary market, but that is the flipside of a discount in the primary 
market, relative to what some fans are willing to pay.</p>
<h3>Randomised, real-name ballots </h3>
<p>Ticket sales and secondary markets often trigger very primitive human 
emotions, with complaints that "genuine fans" of a sports team or singer are 
excluded in favour of those who are willing and able to pay up. Media love to 
focus on the highest asking price for tickets on secondary platforms, because it 
makes a more sensational story than the lowest asking price, which is closer to 
what people are paying to see the event. The media can also always find loyal 
but impoverished fans who have been priced out of the market. But unlike 
adequate food, water, shelter, education and healthcare, it cannot be said that 
tickets to a pop concert or a rugby match are a human right. We checked the
<a href="http://www.un.org/en/universal-declaration-human-rights/" target="_blank">
UN Universal Declaration of Human Rights</a>. It ain't there.</p>
<p>Organisers can choose not to maximise proceeds by instead releasing some or 
all of their tickets by random ballot and to real-names, preventing ballot 
winners from reselling and thereby deterring people from entering the ballot 
unless they actually wish to attend. That makes it possible for people with 
lower budgets to get into an event at below market price, in effect allocating 
the discount by random draw. That should be a choice that organisers are free to 
make, not one forced upon them by law. Organisers and artists adopting this 
sales method will be reducing ticket proceeds, but they may have other 
considerations, such as nurturing younger fans who may stay with them and be 
able to pay more as they (and the performers) age. On the other hand, if 
organisers simply open an internet booking platform with a first-come-first 
served sale of under-priced tickets then they can fully expect the platform to 
be overwhelmed and people to write computer programs (or "bots") or simply 
employ an army of others to scoop up the tickets.</p>
<h3>Say no to intervention and central planning</h3>
<p>The Government should let the free market function by repealing section 6 of 
the POPE Ordinance, not respond to misguided sentiments by expanding its scope. 
The restriction on reselling harms the events industry and performers by 
reducing funding, reduces consumer choice and is against the public interest. 
Stepping up penalties and adding jail time might also give a defendant 
sufficient motivation to challenge the restriction on his Basic Law right of 
disposal by judicial review.</p>
<p>Let organisers and their performers choose the conditions of sale. Stay out of 
the free market. It is ironic that after throwing tens of billions of taxpayer 
dollars into performing arts venues in the West Kowloon Cultural Desert and the 
forthcoming HK$32bn+ Kai Tak Sports Park, the Government is now considering 
reducing the amount that performers and organisers can raise from ticket sales 
and sponsorship by restricting their economic freedom.</p>
<p>If the Government thinks it is OK to cap ticket resales at their original 
issue price, or ban their resale altogether, then what about other forms of 
entertainment. Would it be right, for example, to prohibit anyone who buys 
bottles of this year's wine from a winery from reselling it for a profit? Should 
the wine have your name on it, and the enjoyment be non-transferable? Should we 
require wineries to sell directly to end-users, and not allow restaurants, wine 
merchants and retailers to make a profit? How would that help the wineries?</p>
<p>What about IPOs? Should we prohibit people from selling shares they have 
purchased in an IPO (or were allocated in a selective placement) at above the 
issue price, or at all? After all, that would certainly reduce demand from 
"scalpers". Off with their heads! Yes, it would eliminate the secondary market. 
But let's not worry about secondary markets. Who needs them when the Government 
can centrally plan everything?</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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