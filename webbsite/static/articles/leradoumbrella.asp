
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

<script type="text/javascript">document.title="Lerado's umbrellas and open offer";</script>

	<div class="summary">At last, Lerado (1225) admits that it holds 2% of the China Jicheng (1027) umbrella bubble, still worth HK$561m, which is more than it proposes to raise in an abusive, deep-discount open offer. The circular fails to say why they don't just sell the CJ shares instead. We call on shareholders to save themselves and vote against.</div>

<h2 class="center">Lerado's umbrellas and open offer<br>
<span class="headlinedate">27 October 2015</span></h2>
<p>Our suspicions have once again proved correct. In our
<a href="CAID.asp">article</a> on
<a href="../dbpub/articles.asp?p=60877">China Automotive Interior Decoration 
Holdings Ltd</a> (<strong>CAID</strong>, 0048) of 10-Oct-2015, we wrote about 
its stake in umbrella-maker <a href="../dbpub/articles.asp?p=2350356">China 
Jicheng Holdings Ltd</a> (<strong>CJ</strong>, 1027):</p>
<blockquote>
"So now we have identified 2 shareholders of the umbrella 
bubble, namely CAID with 1.52% and
<a href="../dbpub/articles.asp?p=4923">China Environmental 
Energy Investment Ltd</a> (<strong>CEEI</strong>, 0986) with 2.11%, out of the 
25% float... Given the other identified connection between CAID and
<a href="../dbpub/articles.asp?p=7889">Lerado Group (Holding) 
Co Ltd</a> (1225), we suspect that Lerado's massive market gains for the first 
half of 2015 also involve a shareholding in CJ, but so far, they're not saying."
</blockquote>
<p>We filed a complaint with the Stock Exchange and SFC about the lack of 
disclosure by Lerado, and on Friday night, Lerado
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1023/LTN20151023466.pdf" target="_blank">
disclosed</a> its investment portfolio at 30-Jun-2015. Of the $702.08m of 
investments, CJ accounts for $624m, which implies that Lerado holds 300m shares 
(2.00%) of CJ. Lerado only held 4 other investments. Not by coincidence, each 
and every one of them was mentioned in our article
<a href="trouble2015.asp">Bubbles and troubles</a> (24-Sep-2015) 
regarding the network of companies which includes both CAID and Lerado.</p>
<p>One of these holdings was previously disclosed,
<a href="../dbpub/articles.asp?p=16610">China Investment and Finance Group Ltd</a> 
(<strong>CIFG</strong>, 1226), which in turn had a cross-holding in Lerado received 
in exchange for a 
property. Lerado subscribed for its shares in CIFG at $0.275 on 
21-May-2015. Lerado's subsidiary Black Marble Securities Co Ltd is currently 
"underwriting" an abusive deep-discount open offer by CIFG, and Lerado is also 
proposing a similarly abusive deep-discount open offer.</p>
<p>After we urged the Stock Exchange to prohibit Lerado and CIFG from 
voting to approve each other's open offers due to their material interests in 
the outcome, what did the companies do? Each of them decided to sell their shares, unwinding the cross-holding:</p>
<ul>
	<li>Lerado
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=280886" target="_blank">sold</a> its 103.392m shares (9.89%) of CIFG at $0.076 on 29-Sep-2015, via 
Gransing Securities Co Ltd and Kingston Securities Co Ltd. You can see the
	<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=3271&amp;d=2015-10-02">CCASS 
settlements here</a>. The sale was a <strong>72.4% loss</strong> for Lerado.</li>
	<li>Next, CIFG sold its 71.916m shares (7.49%) of Lerado in two chunks via Astrum 
Capital Management Ltd,
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=281332" target="_blank">selling</a> 23.5m shares on 5-Oct-2015 at $0.242, and the
	<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=281334" target="_blank">remaining</a> 48.416m the next day at $0.248, for an overall average of $0.246. 
You can see the
	<a href="../ccass/chldchg.asp?sort=chngdn&amp;i=1997&amp;d=2015-10-07">first 
settlements here</a>, and the
	<a href="../ccass/chldchg.asp?d=2015-10-08&amp;sort=chngdn&amp;i=1997">second settlements here</a>. CIFG received its Lerado shares in exchange for 
property on 
31-Mar-2015 at $0.50 each, so it has made a <strong>50.8% loss</strong>.</li>
</ul>
<p>The fact that both companies were willing to sell their shares at 
substantial losses, when the losses were largely due to the announcement of 
their respective open offers, after their ability to vote was questioned, supports 
the thesis that the only reason they held the shares in the first place was to 
support each other's abusive transactions. The shares were remarkably easily 
absorbed by buyers, suggesting that they had been lined up in advance - no 
dumping. Lerado's share price 
actually gained 2.5% on the first day and 1.6% on the second day of the sale by 
CIFG. Whether the buyers will vote in favour of the open offer remains to be 
seen.</p>
<p>Returning to Lerado's announcement, other than CJ and CIFG there 
are 3 other holdings, by far the largest of which was
<a href="../dbpub/articles.asp?p=58895">Convoy Financial Holdings Ltd</a> (<strong>Convoy 
FH</strong>, 1019), at $33.81m, implying that Lerado owned 34.5m shares (1.40%) 
of Convoy FH. As we mentioned on <em>Bubbles and troubles</em>,
<a href="../dbpub/positions.asp?p=44748">Mark Mak Kwong Yiu</a>, a so-called 
independent director of Lerado, is CEO of Convoy FH. There is also a holding of 4.6m shares 
(0.89%) of <a href="../dbpub/articles.asp?p=63313">China New Economy Fund Ltd</a> 
(<strong>CNEF</strong>, 0080), and a small holding of $18k (20,000 shares) in
<a href="../dbpub/articles.asp?p=2019649">Finsoft Financial Investment Holdings 
Ltd</a> (<strong>Finsoft</strong>, 8018). As we explained in our article on 
31-Dec-2014, <em><a href="newyear2015.asp">Some bubbles for New Year</a></em>, 
both Convoy and CNEF had invested in the Finsoft bubble. The bubble expanded 
further and then burst,
<a href="../dbpub/ctr.asp?i1=11215&amp;rel=0&amp;d1=12/31/2014">down a net 
91.58%</a> since the article. According to CNEF's
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0924/LTN20150924232.pdf" target="_blank">
interim report</a> at 30-Jun-2015, it still held 2.50% of Finsoft, down from 
4.34% at the end of 2014, and it held 1.46% of Convoy FH.</p>
<p>So, now we know 3 network shareholders of the Jicheng umbrella 
bubble: CAID with 1.52%, CEEI with 2.11% and Lerado with 2.00%, a total of 
5.63%, or 22.52% of the float. Would anyone else like to own up?</p>
<h3>Vote against Lerado's open offer</h3>
<p>Lerado has now published its
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/1026/LTN20151026015.pdf" target="_blank">
circular</a> for the Special General Meeting on 10-Nov-2015 to consider the 
proposed open offer. </p>
<p>Lerado's 300m shares in CJ are still worth (if you believe the market price) 
HK$561m, far more than the $422m it aims to raise in the open offer, and more 
than twice Lerado's current market value. So you 
might think they could just sell the CJ shares instead - but that would 
spoil the game for the other companies in this network by crashing the CJ price. 
You might think that no sensible board would not sell CJ shares which (at $1.87 
yesterday) are still trading at 55x NAV and 42.5x their IPO price - but that 
assumes that the board makes decisions sensibly and independently. The circular, 
including a laughable letter from the so-called independent financial adviser, 
is devoid of any discussion of this funding option. <strong>We call on the Stock 
Exchange to require Lerado to explain why it does not sell the CJ shares instead 
of raising cash in the open offer.</strong></p>
<p>We still have a chance to stop this extortion and restore some value to 
Lerado's share price, which has been heavily depressed by the proposed open 
offer, of 3 shares at $0.15 for every share held. The price on 14-Aug-2015 
before the announcement was $0.47 and it closed yesterday at $0.241, down a net 
48.7%, and far below its net tangible assets per share, which (exclude the 
stock-gains) at 30-Jun-2015 is around $0.728, plus a possible $0.32 if they win 
the arbitration with Dorel. Any gain made from selling the CJ shares before the 
bubble bursts would be a 
bonus.</p>
<p><strong>Vote AGAINST </strong>both resolutions. If you 
hold your shares through a bank or broker, instruct them to vote, and see our
<a href="../pages/howtovote.asp">voting guide here</a>. If your bank or broker 
refuses to cooperate then <a href="../contact">contact us</a> with details and 
we will name and shame them. Don't sit back and expect others to carry the day - 
our editor David Webb holds over 8%, but that is not enough on its own to win. The 
trading in the shares goes "ex-vote" on 3-Nov-2015, so anyone who holds or buys 
before that date can vote.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=60877">CHINA AUTOMOTIVE INTERIOR DECORATION HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16610">China Investment and Finance Group Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2350356">China Jicheng Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63313">China New Economy Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=58895">Convoy Global Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4923">Dufu Liquor Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2019649">Finsoft Financial Investment Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7889">Lerado Financial Group Company Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=44748">Mak, Mark Kwong Yiu</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=136">Enigma Network</a></li>
				
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