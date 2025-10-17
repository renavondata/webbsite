
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

<script type="text/javascript">document.title="Government Blocks Free Market in Tickets";</script>

	<div class="summary">Imagine a securities law which allows IPOs but bans share-trading above the IPO price. That, in a nutshell, is a description of the law on the market for entertainment tickets in Hong Kong. We call on the Government to stop interfering in private contract and wasting law-enforcement resources, and allow the resale of tickets at free market prices. Legalising ticket trading would create new employment, increase profits tax revenue and help set ticket prices in the primary market.</div>

<h2 class="center">Government Blocks Free Market in Tickets<br>
<span class="headlinedate">7 September 2005</span></h2>
<p>One of the more bizarre pieces of legislation in Hong Kong is the
<a target="_blank" href="http://www.hklii.hk/eng/hk/legis/ord/172/">
Places Of Public Entertainment Ordinance</a> (the <b>POPE Ordinance</b>). It 
turns out that if you buy (or legally obtain) a ticket to go to say, Disneyland, 
or a concert, or a football match, and then try to sell it, then it is illegal 
to make a profit.</p>
<p>Imagine a securities law which allows IPOs but bans share-trading above the 
IPO price. That, in a nutshell, is a description of the law on the market for 
entertainment tickets in Hong Kong. It makes a mockery of the Government's claim 
to be running a free market economy. Why can't you pay a premium for a ticket 
that was under-priced by the organiser? Imagine the outcry if the Government 
prohibited the resale of postage stamps by philatelists at a price exceeding the 
face value of the stamp, or if they outlawed the resale of toys given away by 
McDonalds.</p>
<p>A person might have any number of reasons for wanting to sell a ticket after 
obtaining it. He might be called away on business, or taken ill, or have decided 
to go to the place on a different day, or have found something he would rather 
do that day. Or he might just feel that as the event is so popular, he would 
rather take a profit and spend the money elsewhere, because the market is 
willing to pay more than he thinks attending the event is worth to him.</p>
<p>Section 6 of the POPE Ordinance says:</p>
<blockquote>
  <p>&quot;No person shall sell...any ticket or voucher authorizing...admission to 
  any place of public entertainment...at a price exceeding the amount fixed by 
  such proprietor, manager or organizer&quot;</p>
</blockquote>
<p>That makes it illegal to offer your tickets on auction sites such as
<a target="_blank" href="http://tickets.ebay.com/">eBay Tickets</a> or
<a target="_blank" href="http://www.go2hk.com/">Go2HK</a>, because heck, you 
might just make a profit in the auction, and that's illegal in Hong Kong. You 
could offer the tickets at a fixed price of face value, but if there is excess 
demand, then someone who is willing to break the law will grab it and re-sell it 
offline for a profit. The fine for doing so is HK$2,000 (US$257), and the 
Government commits untold amounts of public money to policing this through the 
Technology Crime Division of the Commercial Crime Bureau (<b>CCB</b>), resulting 
in prosecutions like
<a target="_blank" href="http://www.info.gov.hk/gia/general/200509/04/P200509040013.htm">
this one</a>. They even have a pejorative name for the offence: <i>
&quot;ticket-scalping&quot;</i>. Sounds naughty, doesn't it? We guess that makes investors 
&quot;share scalpers&quot; - occasionally selling shares for more than we paid for them. 
Let's outlaw the stock market to prevent this egregious sin. The CCB says it 
will <i>&quot;monitor any on-line ticket scalping&quot;</i> - they must spend a lot of 
time surfing auction sites down at the CCB. Haven't they got better things to 
do, like going after fraudsters in listed companies? Or do they have infinite 
resources?</p>
<p>The law also inhibits the creation of jobs that would otherwise exist in the 
secondary market, in ticketing agencies and web sites that would help match 
buyers and sellers. In our postage stamp comparison, if a ban on profits were 
imposed, philatelists would be out of business.</p>
<p>How do you know what something is worth if there is no market in it? The 
secondary market in any commodity serves an important function - it provides 
&quot;price discovery&quot; for the primary issuer of what the market is willing to pay 
for a ticket, and thereby helps issuers get the maximum price for their product. 
By outlawing the secondary market, Government makes it harder for entertainment 
organisers and operators to set their prices so as to maximise revenue. </p>
<p>We fully accept that, as a matter of private contract, an event organiser or 
theme park operator may, as a condition of sale, make the tickets 
non-transferable and personalise them in the name of the first buyer. Airlines 
do that all the time, and customers agree to that condition when they buy a 
ticket. But if no such condition is imposed by the organiser, then the 
Government should not intervene and impose a condition by law.</p>
<p>The POPE Ordinance also contains a clause that make it illegal to resell 
tickets (at any price) in <i>&quot;any public thoroughfare, or in the entrance hall 
of, or approaches to&quot;</i> a place of public entertainment, except as authorised 
by the entertainment organiser. There is a good reason for this, because ticket 
traders (or &quot;touts&quot;) are in effect running a business on public property, or on 
private property without the owner's consent. But it should not be illegal for 
them to trade tickets in their own premises. Indeed, by making the resale of 
tickets for profit illegal, the Government has driven the trade underground and 
removed a potential source of profits tax from Government revenue.</p>
<p>So we call on the Government to scrap the ban on resale of tickets at a 
profit, collect profits tax from ticket trading businesses, and by scrapping the 
ban, to stop wasting the resources of the Commercial Crime Bureau which would be 
better spent on investigating and prosecuting fraudsters at listed companies.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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