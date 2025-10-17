
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

<script type="text/javascript">document.title="Henderson Investment, Post Mortem";</script>

	<div class="summary">The market has been conducting a post-mortem on the Henderson Investment deal, so by popular request we are jumping in. We highlight loopholes and propose improvements in the Takeover Code, the disclosure law and the Listing Rules, but fundamentally, HLD only has itself to blame for not delivering a knock-out bid and reaching out to all HI shareholders. There's nothing wrong with voting shares you hold, whether or not they are borrowed.</div>

<h2 class="center">Henderson Investment, Post Mortem<br>
<span class="headlinedate">25 January 2006</span></h2>
<p>In the last few days, there has been a lot of unsubstantiated rumour that one 
or more hedge funds may have &quot;caused&quot; the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060120/LTN20060120107.pdf">
failure</a> of the bid by Henderson Land Development Ltd (<b>HLD</b>, 0012) to 
privatise Henderson Investment Ltd (<b>HI</b>, 0097). They didn't cause it, HLD 
did, by not making a sufficiently attractive offer and reaching out to all 
shareholders to vote for it, as we'll explain.</p>
<h3>The rules</h3>
<p>The criteria for success in such a privatisation bid, known in law as a 
&quot;scheme of arrangement&quot;, are 3-fold:</p>
<ul>
	<li>a majority (by number) <u>of shareholders who vote</u>, vote in favour; 
	and</li>
	<li>at least 75% <u>of the voted shares</u> are voted in favour; and</li>
	<li>not more than 10% <u>of the publicly held shares</u> are voted against.</li>
</ul>
<p>An important principle is at stake: the right to private property. A scheme 
of arrangement, if passed, amounts to a compulsory purchase of shares from those 
who are not in favour of it. That is why the threshold of objection is set so 
low, because someone can be deprived of their property (the shares) without 
consent. So an offer must be attractive enough that the objection is minimal. 
The last criterion ensures this.</p>
<h3>The theory</h3>
<p>The theory goes that hedge funds could borrow at least 10% of the publicly 
held shares and vote them against a privatisation, ensuring its failure. 
Equivalently, they could sell the borrowed shares in the market, and buy the 
same number of shares in the market, and vote the purchased shares against the 
deal.</p>
<p>That equivalence demonstrates that there is no difference between a borrowed 
share and a share you own. It is just a share, and if you hold it then you 
should have the right to vote it, whether or not it is borrowed. Similarly, if 
you sell a borrowed share, the buyer has the right to vote it. The share he 
bought does not have a label on it saying &quot;I am a borrowed share&quot;. It is just a 
share. The buyer doesn't even know that the seller borrowed it. Of course, a 
lender can always call in the loan, and then the borrower has to return them, 
buying shares from the market if necessary.</p>
<p>However, in order to profit from such a situation, the hedge funds betting 
against the deal would need to have a net short position, meaning they had sold 
more shares than they bought, so that when a bid fails, they could buy them back 
at a lower price and make a profit. This means that they would have to borrow <u>
more than</u> 10% of the publicly held shares - each additional share giving a 
gross profit, before paying the borrowing fee and other transaction costs.</p>
<p>Now this is theoretically possible, but every borrowed share has a lender, 
and it means that there must be holders of that many shares willing to lend them 
out. What kind of investor would do that? Well, we can broadly categorise 
investors in an offeree into 3 types: those who want the bid to succeed, those 
who want the bid to fail, and those who don't care which way it goes.</p>
<p>Those investors who want a bid to succeed or fail should vote in 
favour or against it accordingly. If they are greedy enough or stupid enough to 
lend out their shares for a bit of extra income, then they should not be 
surprised if the borrower votes the other way. The borrower would only have two 
reasons to borrow - either to vote the shares (for or against), or to sell them 
in the market, creating a short position, which is a bet that the offer will 
fail. He may also hold shares which he will vote against the bid.</p>
<p>If the borrower has borrowed only for the voting rights, then it might be 
someone who is in favour of the bid, and wants to increase the chance of success 
without increasing his economic exposure to failure, or it might be someone who 
is against the bid, and wants to increase the chance of failure. The borrower 
who votes against may be a net long investor who regard the bid as too low and 
doesn't want his shares to be compulsorily purchased, or it might be a hedge 
fund who wants to profit from being net short.</p>
<p>As for investors who don't care which way the bid goes, such as index funds 
who don't always care about the performance of the stocks they hold (although 
they should, if they want people to keep investing in the index), some of these 
funds lend out stock routinely to create extra income and improve their 
performance. People who borrow that stock might vote in favour of the bid, to 
increase the chance of success, or against, to increase the chance of failure.</p>
<p>The only thing we can reliably conclude is that stock lending increases the 
chance of those shares being voted, because they will be passed from those who 
don't care enough to vote themselves, to those who do care which way the offer 
goes.</p>
<p>Of course, it is not just privatisations where stock lending can affect 
voting. Any shareholders' meeting, particularly where a controlling shareholder 
is prohibited from voting (such as on connected transactions), could be affected 
by the votes of borrowed shares.</p>
<p>People also borrow shares for other reasons - for example, to dry up the 
lending market and stop other people borrowing them and hence make it impossible 
or prohibitively expensive to short-sell. That is particularly important if you 
are trying to sustain the share price of an offeror during a share-exchange 
takeover bid.</p>
<h3>Henderson Investment's case</h3>
<p>In any specific case, it will be impossible to know how many shares voted in 
favour or against a proposal were borrowed shares, but we think it very unlikely 
that all of the shares against HLD's bid for HI were borrowed shares. Even if 
they were, HLD should blame itself for failure to table such a compelling offer 
that almost nobody would lend their shares and almost everyone would be in 
favour. If they try again, they should make a more attractive offer and make 
sure they reach all their shareholders.</p>
<p>Ironically, HLD's strategy was probably itself dependent on the assistance of 
hedge funds. On both occasions (2002 and 2005), they made a 1-2 offer - that is, 
the first offer &quot;shakes loose&quot; those shareholders who are ambivalent about the 
company and just want to take the money in the market, and puts the shares &quot;into 
play&quot;. The hedge funds then pile in and buy the shares, hoping to make a small 
profit when the increased offer comes along. HLD duly obliges, with a 4% 
increase in the exchange ratio (<a target="_blank" href="paintedcorner.asp">3.4% 
in the cash bid in 2002</a>), or what the hedge industry calls a &quot;bump&quot;. That's 
just enough to make most merger-arbitrage funds happy, and of course, they will 
vote in favour. So by pandering to the greed of short-term hedge funds rather 
than satisfying long-term investors with a knock-out bid, HLD gambled and lost.</p>
<h3>Gap in disclosure law</h3>
<p>There is a lack of symmetry in our law on disclosure of interests that should 
be rectified. The Securities and Futures Ordinance requires long holdings of 5% 
or more to be disclosed, but it only requires disclosure of short positions 
exceeding 1% if you have a long interest of 5% or more. That means that if you 
hold less than 5% of the shares, then you can also be short more than 5% and 
nobody else would know. The law should be symmetric, and gross long or short 
positions over 5% should be discloseable.</p>
<p>As a member of the SFC's Public Shareholders Group, your editor made this 
point to the SFC before their latest consultation on amending the law was 
published in 2005, but no change was proposed or made.</p>
<h3>Gap in Takeover Code</h3>
<p>Having said that, in the case of a privatisation or takeover bid, holdings 
much smaller than 5% of the company can affect the outcome. If the public float 
is only 25%, then it only takes 2.5% of the issued shares to block the deal. For 
this reason, <b> <i>Webb-site.com</i> believes that the Hong Kong Takeover Code 
should be brought into line with the London Takeover Code,
<a target="_blank" href="http://www.thetakeoverpanel.org.uk/new/codesars/DATA/Rule8Summary.pdf">
which requires</a> that dealings during an offer period by holders of 1% or more 
of the company's shares should be disclosed</b>. Such a person would have to 
disclose all their dealings, long and short. This would improve the transparency 
of the system and make it possible for the market to better judge the risk of a 
deal failing and to respond accordingly. Disclosure: your editor is a member of 
the SFC's Takeovers and Mergers Panel which advises the SFC on changes to the 
code.</p>
<p>Unfortunately, the Takeover Code does not carry any statutory backing, so you 
can't be fined or jailed for breaking it, but a person in breach of it can be 
blacklisted by the SFC from dealing with brokerages (known as a &quot;cold shoulder 
order&quot;), so in the case of hedge funds it provides some deterrent.</p>
<h3>Loophole in the settlement system</h3>
<p>Hong Kong has a &quot;T+2&quot; settlement timetable, which means that if you sell 
shares on day T, then you don't actually deliver them to the buyer until 2 
trading days later. In order to settle a sale made on the Exchange, the shares 
must be in Hong Kong's Central Clearing and Automated Settlement System, or 
CCASS. As a result, the vast majority of publicly held shares are registered in 
the name of HKSCC Nominees Ltd (a subsidiary of HKEx), the nominee of the 
clearing company which runs CCASS. Even with recent improvements to its 
operations timetable, CCASS has to set a voting cut-off based on stock balances 
the day before the meeting, and then send someone to the meeting to vote the 
shares in respect of which it has instructions.</p>
<p>That means it is possible to sell shares in the market in the last 2 days 
before a shareholder meeting, and still have legal ownership of them on the date 
at which voting rights are determined for the meeting, and vote those shares. In 
a nutshell, it allows someone to vote against a privatisation with shares he has 
already sold but not yet delivered. Based on queries <i>Webb-site.com</i> has 
received from hedge funds in the past, we have good reason to believe that this 
loophole is being exploited. However, in the particular case of Henderson 
Investment, turnover in the last 2 days before the meeting was only about 1% of 
the public shares, so even in the unlikely case that all of that turnover was 
shares previously voted, they didn't have a major impact. </p>
<p>To close this loophole, if there is a shareholder meeting the outcome of 
which may reasonably be regarded as price sensitive (including, but not limited 
to, privatisations) then <b>the SFC or Stock Exchange should suspend trading</b> 
in the shares for 2 days before the voting cut-off, so that nobody can vote 
shares they have already sold. If the voting cut-off date is the day before the 
meeting, then that means the suspension should run for the 2 days before the 
meeting, and possibly also the third day before the meeting if CCASS runs its 
voting cut-off program before its settlement program on T+2. We'll leave the 
details up to HKSCC to figure out.</p>
<h3>Loophole in the entitlement system</h3>
<p>While on this subject of timing, we also <b>repeat our call on the Exchange
</b>to amend the Listing Rules so that the ex-entitlement date (when trading in 
the shares begins without the entitlement) for any dividend, rights issue or 
other distribution should not occur before the date of the meeting held to 
consider it. In other words, the 
registrar's record date for entitlements to the distribution should occur at 
least 3 trading days after the meeting date, so that the ex-entitlement date is 
not earlier than the day after the meeting. Otherwise you are open to the 
possibility of people buying shares ex-entitlement and then voting them against 
and blocking the distribution, getting a free gain when the shares they have 
bought go up to reflect the retained entitlement.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=413">HENDERSON INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=412">HENDERSON LAND DEVELOPMENT COMPANY LIMITED</a></li>
				
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