
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

<script type="text/javascript">document.title="The hole in Bitcoin";</script>

	<div class="summary">We've yet to see a grounding in the technology and economics of Bitcoin that a layperson can grasp, so this is our explanation of what all the fuss is about, and why you are looking at one big, US$2.6bn, 275 megawatt bubble that will likely go to zero. Even if it succeeds in becoming an accepted transaction currency, there is a second flaw that will destroy its original purpose.</div>

<h2 class="center">The hole in Bitcoin<br>
<span class="headlinedate">4 November 2013</span></h2>
<p class="revisedate">updated 15-Nov-2013</p>
<p>Over the past few weeks, our more observant readers may have noticed 
increasing media coverage of
<a href="http://bitcoin.org" target="_blank">Bitcoin</a>, the 
decentralised cryptocurrency designed (or should we say, &quot;coined&quot;) by a clever 
developer known pseudonymously as Satoshi Nakamoto (anagram solutions welcome). 
We've yet to find an article which combines a grounding in the technology and 
economic analysis that a layperson can grasp, so this is our attempt to explain 
what all the fuss is about, and why you are probably looking at one big, 
energy-consuming bubble.</p>
<h3>History</h3>
<p>The domain bitcoin.org was registered on 18-Aug-2008. According to the
<a href="https://en.bitcoin.it/wiki/History" target="_blank">history</a> on the 
Bitcoin wiki, the original
<a href="http://bitcoin.org/bitcoin.pdf" target="_blank">paper </a>proposing 
Bitcoin was published on 31-Oct-2008. The first chunk of Bitcoins (the &quot;genesis 
block&quot;) was &quot;mined&quot; on 3-Jan-2009. The earliest
<a href="https://web.archive.org/web/20090131115053/http://bitcoin.org/" target="_blank">
capture</a> of the bitcoin.org web site in the internet archive is on 
31-Jan-2009. It contains fluent English text written in the first person, 
indicating this is likely the work of a single developer rather than a group, 
and probably a native-English speaker.</p>
<h3>Concept &amp; method</h3>
<p>The concept of Bitcoin is to create a digital currency not issued by any 
Government, and with no central registrar to authorise its issuance or keep 
track of transactions - both of those functions are distributed across a network 
of computers. The key features are:</p>
<ul>
	<li>Bitcoins are created, or &quot;mined&quot;, by computers or <strong>nodes</strong>, 
	all competing to solve a mathematical problem based on a <strong>block</strong> 
	of data, with Bitcoins as a reward for the first node to find a solution. 
	This is known as a
	<a href="http://en.wikipedia.org/wiki/Proof-of-work_system" target="_blank">
	Proof-of-work</a> system.</li>
	<li>When a node finds a solution to a block, this is broadcast to the other 
	nodes, which quickly verify the result and add the block to the <strong>
	blockchain</strong>, which includes all previous blocks. Each of those nodes 
	then starts working on the next block, incorporating the result of the 
	previous block.</li>
	<li>Once coins enter circulation, transactions occur by the payer 
	sending coins to the payee using public key cryptography. The payer 
	digitally signs the coins with her private key, and encrypts the coins using 
	the payee's public key. The payee verifies the coins with the payer's public 
	key, and he can spend them using his own private key. This is the same 
	technology behind digitally signed and encrypted e-mails. Fractions of coins 
	can be sent and received in change.</li>
	<li>To prevent a holder spending the same coin twice, the transactions 
	are broadcast to all the nodes, and are incorporated into the next block 
	that a node works on, and hence the sequence in which a coin is passed 
	around becomes part of the blockchain. If a coin is spent twice by the same 
	person, the first transaction to enter the blockchain and survive prevails. 
	Each block consists of one special <strong>coinbase transaction</strong> to 
	create the coins for the winning miner, plus the bundle of reported 
	transactions.</li>
	<li>Two (or more) nodes could
	<a href="http://blockchain.info/orphaned-blocks" target="_blank">separately</a> 
	find solutions to a block at practically the same time, sending their result 
	out to other nodes and resulting in two or more competing blockchains (known 
	as a &quot;fork&quot; in the chain), but the nodes will always work on the longest 
	blockchain, so the one which gets extended first in the next round will get 
	broadcast to all the other networks, will prevail and the other one(s) will 
	be dropped. For that reason, it is wise to wait for a few blocks to be added 
	to the chain as &quot;confirmations&quot; before you can be very confident that a 
	transaction will remain valid.</li>
	<li>The difficulty of the proof-of-work problem is automatically adjusted 
	after every 2016 blocks to target a constant block solution rate of 1 block 
	per 10 minutes, based on the time it took to solve the previous set, so in 
	theory, the rate is adjusted every 2 weeks (20,160 minutes), although this 
	happens faster if processing power is added to the network during the 
	period.</li>
	<li>The mining reward, which started at 50 Bitcoins or <strong>BTC</strong> 
	per block, is halved after every 210,000 blocks, corresponding to a 4-year 
	mining period. In fact, after a slow start, the first cut at block 210,000
	<a href="http://blockchain.info/block-height/210000" target="_blank">was 
	achieved </a>a month early on 28-Nov-2012. So there were 10.5m BTC from the 
	first tranche, and there will never be more than 21m in total.</li>
	<li>Miners can get
	<a href="https://en.bitcoin.it/wiki/Transaction_fees" target="_blank">
	transaction fees</a> for the transactions recorded in the block they solve, 
	but these fees currently only account for a small proportion of the reward, 
	at about 0.07 BTC per block, or 0.28% of the total.</li>
</ul>
<p>An attacker could try to alter the history, retrieving his spent Bitcoins by 
altering the blockchain and paying the Bitcoins to himself. However, to do this, 
he would need enough processing power to extend the blockchain faster than the 
rest of the network and, in the case of older transactions, to catch up with the 
growth of the blockchain. This is commonly known as a &quot;51% attack&quot;, because if 
you have over 50% of the power then you can certainly do this given enough time. 
However, the attacker would still stand a chance of achieving dominance with a 
smaller share of global processing power, if his machines solved the problems 
faster than average. As the network grows, it becomes more expensive to achieve 
this, unless he is able to somehow hijack other machines.</p>
<p class="regbox"><strong>Addendum</strong>, 6-Nov-2013: when we said that 
an attacker could achieve dominance with less than 50%, this was a reference to 
the
<a href="http://en.wikipedia.org/wiki/Byzantine_fault_tolerance" target="_blank">
Byzantine Generals' Problem</a>, which says that a group of N separate generals 
who communicate by messages that may be corrupted by treacherous generals, can 
only agree on when to attack the fort if the number of traitors T among them is 
less than one third, that is, N &gt; 3T+1. This problem was explained in a
<a href="http://research.microsoft.com/en-us/um/people/lamport/pubs/byz.pdf" target="_blank">
1982 paper</a> by Leslie Lamport, Robert Shostak and Marshall Pease. 
The problem was actually mentioned on the
<a href="https://web.archive.org/web/20090131115053/http://bitcoin.org/" target="_blank">
original Bitcoin site</a>. Coincidentally on the day this article was published two professors
<a href="http://hackingdistributed.com/2013/11/04/bitcoin-is-broken/" target="_blank">
published an article</a> noting, via a different approach, the same vulnerability, which can only be 
mitigated by tweeks, not removed. Also, with reference to Robert 
Shostak, who is now CEO of
<a href="http://en.wikipedia.org/wiki/Vocera_Communications" target="_blank">
Vocera Communications</a>, we note that Satoshi Nakamoto is an anagram of &quot;I am 
onto a Shostak&quot;. Make of that what you will, if anything.</p>
<p class="regbox"><strong>Addendum</strong>, 15-Nov-2013: Robert Shostak 
kindly responded to a Webb-site query as follows: &quot;The relationship of Bitcoin 
to the original Byzantine problem is very cool. That paper, incidentally, 
recently won the
<a href="http://2013.dsn.org/jean-claude-laprie-award-in-dependable-computing/" target="_blank">
Jean-Claude Laprie Award in dependable computing</a> - unfortunately, Marshall 
Pease, a colleague of mine at SRI who co-authored the paper and proved the hard 
direction of the main result, passed away long before he received any 
recognition for it... your anagram is brilliant, even if totally coincidental.&quot; 
So the hunt for Satoshi Nakamoto continues.</p>
<h3>The proof-of-work</h3>
<p>What the mining machines are doing is performing a &quot;hash&quot; 
calculation with a 
block of transaction data (including the coinbase transaction) plus a chosen 
number as the input. For a given block, the result of that calculation depends on 
the chosen number, and the chosen number cannot be found from the result without 
a &quot;brute force&quot; trial-and-error effort, rather like trying to guess the 
combination number of a safe by trying repeatedly. Bitcoin uses
<a href="http://en.wikipedia.org/wiki/SHA-2" target="_blank">SHA-256</a>, a 
&quot;Secure Hash Algorithm&quot; designed by our friends at the NSA, which produces a 
256-bit result. In decimal, that is a range from zero up to about a 1 followed 
by 77 zeroes. There are only about 10^80 atoms in the universe, to give you some 
idea of how big that number is.</p>
<p>The &quot;difficulty&quot; in Bitcoin mining is set by requiring that the hash result 
be below a certain &quot;target&quot; threshold in the range of possible results. The 
lower the threshold, the lower the chance of any given input producing a hash 
below that threshold, so the more hashes you have to try before you find an 
input that works. Difficulty is expressed as the ratio of the maximum target to 
the current target. In the early days, these were the same, so the 
&quot;difficulty&quot; was 1. The maximum target has 32 leading zeroes in binary, and so 
on average it required 2^32 or about 4.3 billion hashes to find a winning 
solution. That was probably chosen based on the estimated hashing power of the 
developer's single PC over 10 minutes.</p>
<p>The difficulty did not begin to increase until
<a href="http://blockchain.info/block-height/32256" target="_blank">block 32256</a> 
on 30-Dec-2009, so it is fair to assume that until the middle of December 2009, 
there was only one miner mining, probably the founder. Up to that point, 
1,612,800 Bitcoins had been mined. The
<a href="http://blockchain.info/block-height/266112" target="_blank">latest 
adjustment</a> to difficulty was on 26-Oct-2013, when the difficulty was set at 
390,928,787.64. That, plus the fact that each block only earns coins at half the 
original rate, means that it now takes about 782 million times more hashes to 
produce a Bitcoin than it originally did.</p>
<h3>The arms race</h3>
<p>Originally, miners were using the CPUs in normal PCs, but it wasn't long 
before they were overtaken by
<a href="http://en.wikipedia.org/wiki/Graphics_processing_unit" target="_blank">
Graphics Processing Units</a> running the same algorithms much faster. Then they 
moved on to
<a href="http://en.wikipedia.org/wiki/Field-programmable_gate_array" target="_blank">
Field Programmable Gate Arrays</a>, which can be configured to run the 
algorithm, and recently, these are being overtaken by
<a href="http://en.wikipedia.org/wiki/Application-specific_integrated_circuit" target="_blank">
Application Specific Integrated Circuits</a> which are hardwired in the foundry 
to carry out the algorithm, and so are even faster. Such is the state of this 
crypto-arms race that firms are taking pre-orders of products they cannot yet 
ship. Brands include <a href="http://avalon-asics.com/" target="_blank">Avalon</a>,
<a href="https://bitmine.ch/" target="_blank">Bitmine</a>,
<a href="http://www.butterflylabs.com/" target="_blank">Butterfly Labs</a>,
<a href="http://cointerra.com/" target="_blank">CoinTerra</a>,
<a href="https://hashfast.com/" target="_blank">Hashfast</a>,
<a href="https://www.kncminer.com/" target="_blank">KnCminer</a>,
<a href="https://terrahash.com/" target="_blank">Terrahash</a> and
<a href="http://virtualminingcorp.com" target="_blank">Virtual Mining Corp</a>.</p>
<p>The key point to note on this is that the more machines are plugged into the 
network, the greater the competition to win the next block, and therefore the 
higher the difficulty must be set, and the more hashes it will take (on average) 
to discover a solution to each block. At a given level of technology, each hash 
will take a certain amount of energy to calculate, and as the technology 
improves, the difficulty will also be raised to ensure that steady output of 1 
block every 10 minutes. There is a virtual gold rush going on for people to plug 
in mining machines and grab a diminishing share of the return.</p>
<p>To spread their risk, rather like groups of people entering a lottery by 
sharing tickets, there are
<a href="https://blockchain.info/pools" target="_blank">mining pools</a>, where 
miners share the reward if one of them comes up with a solution to the next 
block.</p>
<h3>Energy consumption</h3>
<p>Rationally, however much money you have spent on your mining equipment, you 
are not going to run it if your energy cost is greater than the market value of 
Bitcoins you expect to produce. Some people are getting &quot;free&quot; electricity from 
their parent's home, their college dorms or their office, and therefore can run 
obsolete mining machines without caring about the energy consumption, but they 
probably only have a small share of the overall hashing capacity. Currently the 
global capacity is about 4 petahashes per second (4 x 10^15), and it has been
<a href="http://blockchain.info/charts/hash-rate" target="_blank">growing 
exponentially</a> as new machines come online.</p>
<p>At 6 blocks, or 150 Bitcoins, per hour, with a current exchange value of 
about US$220 per Bitcoin, the hourly supply is worth about US$33,000. If the 
mining market is rational, people will keep adding capacity until the energy 
cost is that much. Some will continue beyond the point when their machines are 
uneconomic, because they haven't seen the size of their bill yet, or because 
they are gambling on winning the block lottery for the next 25 Bitcoins 
(currently worth about US$5500), even though they have a negative expected 
return. That's the nature of lottery tickets.</p>
<p>If energy in the cheapest parts of the world (particularly the USA) is 
about $0.12 per kWh, then a breakeven mining market would imply a power load of 
about 275MW. That's enough to power about 214,000
<a href="http://www.eia.gov/tools/faqs/faq.cfm?id=97&amp;t=3" target="_blank">
average US households</a>, or about two-thirds of households in
<a href="http://www.bayareacensus.ca.gov/counties/SanFranciscoCounty.htm" target="_blank">
San Francisco City &amp; County</a>. The annual energy use would be 2.409 billion 
kWh, equivalent to about 0.06% of US electricity consumption. That compares with 
about 1.5%-2% for data centres, so it is equivalent to about 3-4% of data centre 
usage.</p>
<p>Of course, if you live in a cold climate and were going to heat your home 
anyway this winter, then at least for the next few months you could substitute 
the heating by running Bitcoin mining machines, if you can tolerate the noise.</p>
<p>If (or rather, when) the value of Bitcoins collapses, miners will have to 
switch off their machines and there will be a lot of redundant hardware around, 
custom built with ASICs to do only one thing. At least those with GPUs can do 
something more useful to society, like
<a href="http://folding.stanford.edu/" target="_blank">protein-folding</a> or 
running the <a href="http://setiathome.berkeley.edu/" target="_blank">SETI app</a> 
to keep you warm at night.</p>
<h3>Losing Bitcoins</h3>
<p>You can't lose digital Bitcoins down the back of your sofa or drop them 
through a hole in your pocket, but if you lose your private keys, or forget the 
password to access them, then you've achieved the same thing. The holder will be 
unable to spend or transfer them. So people who rely on their hard drives or 
their memory and don't have backups will gradually take some Bitcoins out of 
circulation forever. Similarly, people who die with Bitcoins in their digital 
wallet without divulging the password will also lose them. For that reason, if 
Bitcoin survives, then the number of outstanding BTC will not reach 21 million, 
but will start to decline when at some point they are being lost faster than 
they are mined.</p>
<h3>Bitcoin banking</h3>
<p>If Bitcoin survives, then virtual banks could be established which would 
borrow your Bitcoins as &quot;deposits&quot;, and lend them, at risk, to other people or 
businesses, increasing the velocity of circulation of Bitcoins and broadening 
the amount of economic activity that can be handled without necessarily 
inflating the value of BTC. In the
<a href="http://en.wikipedia.org/wiki/Quantity_Theory_of_Money" target="_blank">
quantity theory of money</a>, the amount of money (M) multiplied by the number 
of times it changes hands in a period (the velocity, V) is equal to the value of 
all transactions T at their price P, that is MV=PT. So increasing V allows more 
T. Indeed, one simulation of a BTC bank is already online at
<a href="https://www.coinlenders.com/" target="_blank">coinlenders.com</a>.</p>
<p>For BTC banks to work, depositors (lenders) would have to transfer BTC to the 
bank with no guarantee that they would get it back. BTC banks could credit 
interest on deposits and charge it on loans, keeping a spread to cover loan 
losses and profits. BTC banks could make bad loans, and BTC banks could go bust 
- particularly if there is no oversight, no capital adequacy regime.</p>
<p>Banks could self-regulate and promise to keep a certain proportion of 
Bitcoins on hand to cope with withdrawals, having their accounts audited 
regularly and stacking up the virtual cash in their virtual window by displaying 
an amount of BTC that bears their digital signature to deter bank runs. In the 
real world, this is known as a &quot;reserve&quot; and the system is called
<a href="http://en.wikipedia.org/wiki/Fractional_reserve_banking">fractional 
reserve banking</a>, as a fraction of all deposits is kept in reserve rather 
than lent out.</p>
<p>We doubt that the world's governments would allow Bitcoin banks to evolve 
without bringing them under supervision to try to protect depositors, and they 
would develop the same regulatory overhead costs as existing banks. If Bitcoin 
survived, existing banks would also get in on the act, as they have 
well-established infrastructures for assessing credit and making loans, which 
start-up BTC banks would lack.</p>
<p>But, given a fixed supply of Bitcoins, and a given reserve ratio, there is 
still a limit on the amount of Bitcoins plus deposits that can be created - for 
example, at a 5% reserve ratio, the deposit base could not exceed 420m BTC, 20 
times the maximum number of Bitcoins. And that brings us on to...</p>
<h3>The hole in Bitcoin</h3>
<p>We love the science behind Bitcoin (your editor is a mathematician and 
programmer of the 1980s era, so it brings out his inner geek), but here is the 
biggest flaw: the economics of it. For Bitcoin to succeed, it has to become a 
transaction currency, widely-accepted by the real world for goods and services. 
With a cap of 21 million Bitcoins, the accepted wisdom driving prices is that 
spreading the limited supply of Bitcoins over all these real-world transactions, 
even with fractional reserve banking, would necessitate a high valuation per 
Bitcoin.</p>
<p>Unfortunately, most of the people getting into Bitcoin, either with 
cash, goods and services or by buying and running mining rigs, are just hoarding 
the Bitcoins, either expecting the price to go up because they believe in this 
transactional utility, or expecting the price to go up because other people will 
- people like the
<a href="http://money.cnn.com/2013/09/17/investing/bitcoin-winklevoss-twins/" target="_blank">
Winklevoss twins</a>, who proposed setting up an ETF to hoard Bitcoins (<a href="http://www.sec.gov/Archives/edgar/data/1579346/000119312513393903/d562329ds1a.htm" target="_blank">SEC 
filing</a>), rather like the
<a href="http://www.spdrgoldshares.com/" target="_blank">SPDR Gold Trust</a>.</p>
<p>The flaw then is that most Bitcoin owners are hoarding something which they 
expect to become a widely-used transaction currency, and if everyone holds on to 
their Bitcoins, then it won't become a transaction currency. Eventually, enough 
participants will look around the room, see that nobody is spending anything, 
and head for the exit, seeking to cash out. This will crash the price of BTC, 
and destroy any confidence in it as a transactional currency, taking it to zero 
- worthless bits on a disk. At least with Gold you can turn it into jewellery or 
use it in electrical contacts, and it is shiny. Don't ask us to predict the 
timing of this; avalanches cannot be predicted, but right now, the entire stock 
of Bitcoins is valued at about US$2.6bn - that's an awful lot of snow on the 
mountain.</p>
<p>Very few vendors are accepting Bitcoins for real goods or services, other 
than as promotional gimmicks. Those who sell mining rigs for BTC are converting 
the cash it cost to build the rigs into Bitcoins. Those who run the mining rigs 
are converting the cost of energy into Bitcoins. A certain amount of real cash 
is exchanged for Bitcoins outside of traditional payment networks, by people 
meeting offline (see <a href="https://localbitcoins.com/" target="_blank">
LocalBitcoins.com</a> for example), sucking people into the scheme,&nbsp; but 
that could be brought to a near-halt if governments start applying existing 
legislation governing money-changing to individuals who are doing this as a 
business.</p>
<p>In the US, the Treasury's Financial Crimes Enforcement Network (FinCEN) 
issued a
<a href="http://www.fincen.gov/statutes_regs/guidance/html/FIN-2013-G001.html" target="_blank">
Guidance Note</a> on 18-Mar-2013 warning that exchange services such as
<a href="https://www.mtgox.com/" target="_blank">MtGox</a>, a Japan-based firm 
which was accepting real money in the US, are Money Services Businesses. This 
was followed in May by the
<a href="http://techcrunch.com/2013/08/23/feds-seize-another-2-1-million-from-mt-gox-adding-up-to-5-million/" target="_blank">
seizure of US$5m of balances</a> held by a subsidiary of MtGox in the US banking 
system. MtGox, you should note, claims to be &quot;the world's largest Bitcoin 
exchange!&quot; so goodness knows what the others are like.</p>
<p>There are so many well-established and potential future ways to pay for 
things online. Paypal lets you
<a href="https://www.paypal.com/webapps/mpp/send-money-online" target="_blank">
send money to pals</a> without charge, although they charge fees to merchants. 
Outfits like Amazon, Apple, Google and Microsoft all have the capacity to set up 
payment networks between users, denominated in real-world currencies such as the 
US dollar, and linked to bank accounts. Google has done this for the USA with
<a href="http://www.google.com/wallet/" target="_blank">Google Wallet</a>.</p>
<h3>Transaction fees - the second hole</h3>
<p>Even if we are wrong and Bitcoin becomes a widely-accepted transaction 
currency, the second flaw in Bitcoin is this: when the rate of coin production 
is reduced towards zero, the only economic incentive the nodes will have to 
convert electricity into blocks (and heat and noise) is the transaction fees. So 
far, these are very low, but if the people who control the
<a href="https://github.com/bitcoin/" target="_blank">Bitcoin specification</a> 
don't increase the fees to a commercial level then the amount of machines 
running the algorithm will plunge for lack of reward, and it will become much 
less expensive to take control of the network by holding more than 50% of the 
hashing power. However, if fees become a significant part of transaction values, 
then a lot of users (not seeking illegal goods and services) will wonder why 
they don't just use traditional payment networks denominated in real currencies. 
So there's the conundrum: charge too little, and someone will put in enough 
capital to take over the network and turn it, in effect, into just another 
MasterCard, Paypal or Visa. Charge too much, and people will use other payment 
networks.</p>
<p>This problem is inherent in Bitcoin's design to use a proof-of-work 
distributed system rather than a central registrar. The system depends on the 
proof being expensive enough, and hence the fees being high enough, that nobody 
will find it worthwhile to take control.</p>
<p>Miners are currently generating about US$33k per hour in value of new 
Bitcoins; that's US$289m per year. Is the world willing to pay that much per 
year, or more, to settle Bitcoin transactions?</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=120">Crypto-tokens</a></li>
				
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