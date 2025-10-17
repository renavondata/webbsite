
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

<script type="text/javascript">document.title="Hong Kong's Own Goal";</script>

	<div class="summary">It's a goal! No, we're not talking about the consolation goal that Brazil let in at the end of a 7-1 thrashing of Hong Kong, but the own-goal scored by the HKFA in its ticketing strategy. We look at the economics of event pricing and suggest a better, market-driven approach to ticket sales, which should reduce the amount of public subsidies in HK sports and arts. These subsidies are in direct conflict with HK's free-market philosophy.</div>

<h2 class="center">Hong Kong's Own Goal<br>
<span class="headlinedate">13 February 2005</span></h2>
<p>One of the areas we like to write about on <i>Webb-site.com</i> is Hong 
Kong's attempts to operate a free market economy. Today this takes us off the 
beaten track and into the microcosm of Hong Kong soccer, in the wake of Brazil's 
7-1
<a target="_blank" href="http://www.thestandard.com.hk/stdn/std/Sports/GB11Dk01.html">
thrashing</a> of Hong Kong in front of a half-empty (or, if you prefer, half 
full) stadium on Wednesday 9-Feb-05. It wasn't just the team that got thrashed, 
but ticket revenue too.</p>
<p>After experiencing a
<a target="_blank" href="http://www.hkfa.com/article/oldnews_view/718/1/18/">
sell-out crowd</a> and a frothy secondary market for a match with Real Madrid in 
Aug-03, the <a target="_blank" href="http://www.hkfa.com/">Hong Kong Football 
Association</a> (<b>HKFA</b>), with all the market savvy of an Eskimo in 
Ecuador, came up with the following
<a target="_blank" href="http://www.hkfa.com/article/articleview_eng/2314">
scheme</a> to sell 25,000 tickets for the 2005 Carlsberg Cup:</p>
<ol>
  <li>Anyone could register for a random draw, by 
  internet or telephone, without payment. You just entered your HK identity number, 
  date of birth and phone number, between 08:00 on Wed-26-Jan-05 and 23:00 on 
  Thu-27-Jan-05.</li>
  <li>6,250 people were picked at random, with another 
  1,000 added to the wait list, and the winners were announced on the web and 
  via hotline at 23:00 on Fri-28-Jan-05.</li>
  <li>Each winner would have the right to buy up to 4 
  tickets, but only if they appeared at the HK Stadium in a timeslot specified 
  by the organisers on Sun-30-Jan-05.</li>
  <li>Tickets were priced at HK$1500 (US$192), $1200, 
  $800 and $500 (elderly and student concessionary tickets were $150) based on 
  this <a target="_blank" href="http://www.hkfa.com/images/seating_plan.jpg">
  seating plan</a>. As you can see, the number of $500 tickets was relatively 
  small.</li>
</ol>
<p>Anyone with the faintest understanding of markets will realise that the most 
obvious problem with this arrangement is that registration gives you a right 
without an obligation - a free option to buy tickets, without any money up 
front. Frankly we are surprised that only
<a target="_blank" href="http://www.hkfa.com/article/articleview_eng/2319">
59,763 people</a> tried to register, but then the scheme was only announced the 
day before the 2-day window started. After taking out duplicates and those with 
missing data, it reduced to 53,209 registered persons. Since registration 
carried no obligation, nobody needed to make a judgement about whether the 
pricing was reasonable at that time - you simply registered to get the option. 
As a result, a large number of the registrants were probably speculators and their 
nominees.</p>
<p>Another problem was that winners had to get to the Stadium on a Sunday, in a 
narrow time-slot, in order to actually buy the tickets. Not e-commerce, but 
f-commerce, &quot;f&quot; as in foot, if you are being polite about it. Bear in mind that 
the arrangements were only announced on the Wednesday before, so this may have 
been a deterrent to some people, particularly those living in the New 
Territories. Also, those who were allocated later time-slots for purchase may 
have been deterred from showing up by the possibility that the best seats in 
their zone had already been sold.</p>
<p>The third problem, implied by the relatively low number of registrants 
(compared to, say, the IPOs of Tom.com, the MTRC or the Link REIT IPOs), was pricing. As it 
turned out, most of the speculators did not exercise their right to buy, and <a target="_blank" href="http://www.hkfa.com/article/articleview_eng/2326">
by 
the end of the Sunday sales</a> to the randomly-picked buyers, organisers had 
<i>&quot;very few&quot;</i> $500 tickets left, but plenty of the others. Later on the Monday, 
the HKFA
<a target="_blank" href="http://www.hkfa.com/article/articleview_eng/2330">
announced</a> that 18,000 tickets remained, implying that only 7,000 had been 
sold. By the end of the match, final ticket sales were 19,825, and attendance 
was 23,425 out of a capacity of about 40,000. However, 15,000 seats were available through other channels, presumably including sponsors and 
the football association, so part of the actual sales were probably made this 
way.</p>
<p>Finally, if pricing had been perceived as low (which it wasn't), then there would have been even more 
registrations, and the people who actually wanted to attend the match would have 
received only a small portion of the tickets, while speculators would have 
exercised their option to buy and then resold the tickets in the secondary market.</p>
<h3>The economic problem </h3>
<p>And that brings us to the economic problem associated with fixed-price sporting events: how do you fill as many seats as possible, whilst maximising revenue and 
minimising risk? How do you know in advance how popular an event will be, and 
how much spectators will be willing to pay for it? And how do you know in advance 
how much more someone will pay for a better view of the action, that is, the 
pricing differential between seat types?</p>
<p>You can't. As you can see from the Brazil-HK match, pricing was really a stab in the dark. As an organiser, if you want to be certain of filling the seats, then you aim 
low, setting ticket prices at such a level that you are confident of a minimum 
level of revenue, but increasing the likelihood that there will be excess demand and that 
tickets will trade at a large premium in the secondary market, to the benefit of 
speculators, and resulting in a disproportionate number of men with tattoos 
jumping long queues of applicants. This indeed is what investment bankers like 
to do when selling IPOs (under-pricing that is, not wearing tattoos). If you 
persuade the issuer to set a lower price, then there can be more confidence that 
the offer will go like the clappers (to use a technical term) and you can use 
the under-pricing to reward your favourite brokerage clients with allocations.</p>
<p>On the other hand, as an organiser, if you want to target higher revenue but 
with more risk, you can set ticket prices higher, and run the risk of being 
undersubscribed, having a half-empty stadium and failing to maximise your 
revenue or even to cover your costs. In the case of an IPO, that can mean a 
cancelled offering and a company which walks away with costs but no financing.</p>
<p>Airlines and hotels experience similar pricing challenges, and to some extent 
they resolve this by dynamic pricing - book early, and you get one price, book 
later, and you may pay more (if seats are in short supply) or less (if they are 
trying to fill seats with standby or bucket-shop tickets). But events organisers 
find it difficult to discount, because they risk alienating the public who paid 
higher prices earlier. And unlike airlines or hotels, events like soccer 
fixtures or pop concerts tend to be one-offs: they do not normally have another 
match or show the next day, so they cannot shift demand to match supply, and they do 
not have a track record of near-identical flights (same day of the week, same 
destination, same time of year) to judge their pricing.</p>
<h3>Let the market decide</h3>
<p>The answer is to let the market decide the right price for the tickets, by 
tender or open auction. There are numerous different ways to do this, and the 
internet certainly can help. Without going into all the details, there are two 
main types of auction - either a uniform-price auction, where the price for each 
seating zone is set at the highest price at or above which the bids cover all 
the seats, or an English auction, in which bids are accepted in descending order, and 
what you bid is what you pay. In the second case, you end up with people paying 
different prices for the same seats., but you don't necessarily get higher 
proceeds, because people bid lower on average to avoid &quot;winner's curse&quot; - the 
knowledge that you paid much more than the lowest successful bidder. </p>
<p>In 1996, half of the Nobel prize in economics went to 
<a target="_blank" href="http://en.wikipedia.org/wiki/William_Vickrey">William Vickrey</a>, partly 
because of his work in the 1960s in auction theory, and the single-item version of 
the uniform-price auction is often named after him. He died of a heart attack 3 days after the announcement. In a single-item Vickrey auction, each person 
submits a sealed bid and the person with the highest bid wins, but pays the 
price of the second-highest bid, thereby encouraging each person to bid what 
they truly believe something is worth, rather than just bidding slightly above 
what they think everyone else will bid for the item.</p>
<p>In an auction for multiple items, there may be a tie for the lowest winning 
bid, in which case, to tidy things up, you can either allocate tickets to those 
bids by random draw or on a time-priority (first-bid-first-served) basis. 
Everyone who bid above the lowest winning price gets a full allocation.</p>
<p>For those rare IPOs which are sold by auction, the most popular method is the uniform-price 
auction, with a fixed closing date by which final bids are made.
<a target="_blank" href="http://www-1.gsb.columbia.edu/hermes/fall2004/article_google.cfm">
Google's IPO</a> was an example of this. In another sense, the same method is 
used in most IPOs these days, through a &quot;book-building process&quot; in which 
institutions indicate to the &quot;book-runner&quot; how much stock they would be willing to 
buy at what price, and a &quot;book&quot; of demand is built which allows the book-runner 
to determine a strike price. That price is what the public then pays in the 
retail portion of the offer.</p>
<p>So, if we were running the next sale of soccer tickets in HK (a sport in 
which we normally have not the slightest interest), then here is what we would 
do:</p>
<ol>
  <li>Decide how many zones of seats will be auctioned 
  (A, B, C, D) based on quality of view (e.g. front, back, lower, upper).</li>
  <li>Decide what the goals are (pardon the pun) - do 
  you want to achieve at least a minimum level of revenue, or enough to cover costs, or do 
  you want to achieve the highest possible attendance, to fill the crowd? Based 
  on this, set a minimum bid price for each zone, but set it low to get the 
  bidding going (see <b>note</b> below).</li>
  <li>Decide a starting date and a closing date for the 
  auction, allowing a reasonable time for people to make and increase their bids 
  (say, 2 weeks for a major event). Leave enough time after the closing date for 
  people to make their plans and receive their tickets.</li>
  <li>Announce the sales method and timetable early, and explain it 
  clearly.</li>
  <li>Allow applications, backed by cash, cheque (which 
  will be cleared) or credit card, for as many tickets as the applicant 
  wants in 
  each zone, at whatever price they are willing to pay, subject to the minimum. 
  Bids can be made by web, phone or box office. All bids (including those 
  received by phone or box office) would be entered into an online auction 
  system. The online system would disclose bidding progress, ideally in real 
  time (see <b>note </b>below), and the same data would be available by computerised telephone hotline.</li>
  <li>Applications cannot be 
  withdrawn, but may be increased in size or price at any time up to the closing 
  date, subject to making top-up payment for the increase.</li>
  <li>Through this system, the market will determine the lowest price at which bids cover all 
  the available seats in that zone (the &quot;Uniform Price&quot;, see <b>note</b> 
  below). Once bids cover all available seats, the Uniform Price will start to 
  rise above the minimum bid. As bidding progresses, notify bidders by e-mail or 
  SMS if their bids are too low to succeed, and invite them to increase.</li>
  <li>Contiguous seating could be guaranteed in blocks 
  of up to say, 6, and beyond that size, the applicant may be allocated seats 
  which are not adjacent, for example, a successful bid for 15 seats would get 
  at least two blocks of 6, if not all 15 together.</li>
  <li>Close the auction, allocate seats to the winning bidders 
  at the final Uniform Price, and mail 
  them their tickets and any refunds of unused bid money. For large applications 
  (like in IPOs) you could allow people a day to collect their tickets and 
  cheques before mailing the remainder.</li>
  <li>If there are any unsold tickets, offer them 
  for sale at not less than the Uniform Price for each zone. Note that the 
  organiser can create an incentive to participate in the auction by warning 
  that post-auction prices will be set higher than the Uniform Price - say, at 
  least 10% higher.</li>
</ol>
<p><b>Notes</b>: it is still possible that there will be applications for fewer 
seats than there are seats available (like an undersubscribed IPO), or that the 
seats can only just covered by a very 
low Uniform Price, resulting in insufficient revenue. Accordingly,  the organiser 
can reserve the right to reject low bids even if it 
results in unsold seats. The Uniform Price could then be set higher up the bid 
curve, so that it maximises revenue (seats sold x Uniform Price) or so that it 
fulfils some other objective, such as covering  costs, or such as 
ensuring that the Uniform Price for that zone exceeds the Uniform price for an 
&quot;inferior&quot; zone, or so that the auction covers a minimum percentage of the seats 
available. There are many other variations beyond the scope of this article, but 
you get the general idea.</p>
<p>Although the Uniform Price auction was designed for a sealed-bid system, since it is practically impossible to prevent information leakage during an 
auction on this scale, it is better to go with a transparent approach, with 
progress disclosed in real-time or near-real-time, than to have insider trading.</p>
<h3>Concessions</h3>
<p>Although it is market-distorting, if it is deemed socially desirable (perhaps 
to stimulate interest in soccer) to sell 
discounted concessionary tickets for 
students, the elderly, or other special groups, these can be awarded by the same 
auction method 
as above, but subject to proving eligibility in advance. As you can see on the
<a target="_blank" href="http://www.hkfa.com/images/seating_plan.jpg">map</a>, 
the HKFA put blocks of seats that would otherwise have been priced at $800 and 
$1200 into the $150 concession pricing. But&nbsp; there is no reason why the 
concessionary ticket holders should all have to sit together - you could simply 
set a cap on the number of concessionary seats in each type of seating, and then 
conduct a uniform-price tender on those seats. This would be interesting, 
because it may turn out that the elderly, or students, can in fact afford to pay 
 
more for the tickets than current pricing indicates. But let the market 
decide the fair price by holding a separate auction for their group. You could 
include a rule that the Uniform Price for concessionary tickets will not be set 
above the standard ones for that zone.</p>
<p>These tickets would have to be personalised to prevent resale in the full-price 
market, or at the least, clearly marked so that eligibility (for example, as a 
student or senior citizen) is verified at the gate, so student tickets could 
only be traded amongst students, and so on.</p>
<h3>Trading</h3>
<p>Amazingly, for a free market, HK events organisers have in the past taken 
steps to personalise full-price (non-concessionary) tickets, or adopted other 
measures (such as conditions of sale) to prevent or inhibit them being resold in the secondary market. This 
is silly, because if the ticket is non-transferable, then it reduces freedom, 
and so the buyer will pay less for it in the first place. There are numerous 
reasons why a ticket holder might not eventually want to attend an event, 
including unexpected work or travel, sickness, being offered a better seat, 
discovering a better way to spend the time, or simply wanting to speculate on 
the value of the tickets. By selling freely transferable tickets, the organiser 
will capture the value of transferability.</p>
<p>There are plenty of on-line ways to trade events tickets, and this should be 
encouraged, not frowned upon. The secondary market provides liquidity for 
tickets purchased in the primary market. Of course, so long as the organiser is offering unsold tickets 
in the &quot;primary&quot; market, 
the secondary market will not trade above the primary price, but if all tickets have been sold, 
then there is no natural  ceiling.</p>
<p>Bogus tickets are always a risk in the secondary market, but this risk can be 
almost eliminated if a trusted intermediary verifies the tickets (by physically 
holding them) before sale. Alternatively, in a peer-to-peer market such as
<a target="_blank" href="http://www.ebay.com">eBay</a> or
<a target="_blank" href="http://www.go2hk.com/">Go2HK</a>, the price will 
reflect that risk.</p>
<p>There is an opportunity here for the event organiser, which 
can use the secondary market to offer unsold or resold tickets which are 
guaranteed to be genuine. The organiser can validate tickets for resale and make 
a commission in the process. Another approach, adopted by
<a target="_blank" href="http://www.stubhub.com">StubHub</a> in the US, is to 
take credit card details from sellers, and if their ticket turns out to be fake 
or non-existent, then the seller is charged for the cost of buying another one, 
if one can be found.</p>
<h3>Subsidies, sports and arts</h3>
<p>Let us not forget that the Football Association, and many other sporting 
bodies, are
<a target="_blank" href="http://www.lcsd.gov.hk/en/ls_act_subvent.php">
subsidised</a> by Government, and that means you, the public. Even if you 
agree with this policy (which we don't), you will probably accept that it is 
irresponsible for subsidised organisations to leave money on the table by 
failing to maximise net income from their commercial activities, thereby 
increasing the amount of financial support they need from Government.</p>
<p>Despite the sell-out in the Real Madrid game, for which tickets were resold 
in the secondary market at much higher prices, the HKFA recorded a small loss of 
HK$822,666 which had to be paid for by the Government, because it had promised 
to cover losses up to $10m. A market-driven auction-based approach to ticket 
pricing would have avoided that expense and probably made a substantial surplus 
for the HKFA whilst still having a sell-out crowd.</p>
<p>It needn't stop there. The arts in Hong Kong are also heavily subsidised. Or 
at least, certain areas are, including orchestras, dance, Cantonese opera, 
theatre and the annual <a target="_blank" href="http://www.hk.artsfestival.org">
Arts Festival</a>. Subsidising the arts (or anything else) distorts the free 
market, reduces the incentive for private sector arts and entertainment, and 
also reduces the incentive for subsidised entities to maximise their commercial 
revenues. Meanwhile if you are organising a pop concert, running a cinema or an 
art gallery in Hollywood Road, you get no subsidy at all, and are on your own.</p>

<p>This year, of the total budget of $60m for the Arts Festival, 
$16.4m will come from the Government, and $3.6m from the Jockey Club Charities 
Trust, funded by a government-sanctioned monopoly on gambling. Not only that, 
but the festival is also supported by the Government-funded Tourism Board, and only $27m, or 
less than half the budget, is expected to come from ticket sales. And yet every year, ticket categories in many 
of the Arts Festival events are sold out weeks or months ahead of the event, 
implying that revenue for these events would have been higher (and subsidies 
lower) if ticket prices 
were set by a more market-driven mechanism.</p>

<p>As a further indication of the lack of market savvy in the Arts Festival, 
here we are in 2005, and local
<a target="_blank" href="http://www.info.gov.hk/digital21/eng/statistics/it_survey2004.html">
household internet penetration</a> surpassed 64% in mid-2004, yet for many of 
the events (except those at the Academy for Performing Arts), you cannot even 
book on the web, only by telephone manned by expensive humans at
<a target="_blank" href="http://www.hk.artsfestival.org/eng/booking/overview">
Urbtix</a> (yes, this ticketing office is run by the Government), and only for 
10 hours per day.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17200">Football Association of Hong Kong, China Limited (The)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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