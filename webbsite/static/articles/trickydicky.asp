
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

<script type="text/javascript">document.title="Dick's Tricks at Harvey Nicks";</script>

	<div class="summary">Corporate governance bad-boy Dickson Poon has been importing more than just trinkets to London's Harvey Nichols. He's taken a page out of the Hong Kong trick book and is using a technique which was banned in Hong Kong earlier this year, to threaten the minority shareholders with a delisting if they don't accept his privatisation bid.</div>

<h2 class="center">Dick's Tricks at Harvey Nicks<br>
<span class="headlinedate">13 November 2002</span></h2>
<p>We last wrote about this group in our article <a href="clickstricks.asp"> Clicks and Tricks</a> on 6-Jul-00, regarding a previously undisclosed connected transaction between HK-listed Dickson Concepts
(International) Ltd and a company controlled by Dickson Poon (<b>Mr Poon</b>), its Chairman.</p>
<p>Thankfully, the proposed GEM spin-off of <a href="http://www.dicksoncyber.com/" target="_blank"> Dickson Cyber Concepts Ltd</a> was never inflicted on the investing public, and the flagship "Cyber store" at Kowloon Station which was opened with much fanfare by HK Chief Executive Tung Chee-hwa has now become
<a href="http://www.dicksonwarehouse.com/" target="_blank"> Dickson Warehouse</a>, where you can find a mixture of odd lots in an odd setting.</p>
<p>Now over to London where Mr Poon is trying to privatise the Absolutely Fabulous
<a href="http://www.harveynichols.com/" target="_blank"> Harvey Nichols Group
PLC</a> (<b>HVY</b>), of which he owns 50.1%, which he <a href="http://www.harveynichols.com/html/aboutus/pdf/Interim%20Statement%20period%20ended%2028th%20Sept.%202002.pdf" target="_blank"> claims</a> is having a terrible time in the UK retail sector, so terrible in fact that it has recently opened a 65,000 sq ft store in Edinburgh.</p>
<p>His initial proposal to privatise HVY at 250p per share was an all-or-nothing Scheme of Arrangement under the UK Companies
Act, which requires approval of a majority in number of the minority shareholders who hold at least 75% of the voted shares in the shareholders' meeting.</p>
<p>This scheme was blocked by minority shareholders including <a href="http://www.deam-uk.com/" target="_blank"> Deutsche Asset
Management</a>, which owns about 30% of the free float. Last Friday, the last business day before the meeting, Mr Poon tried to head off the vote he was sure to lose, with a
<a href="http://www.ukwire.co.uk/cgi-bin/articles/200211081630445787D.html" target="_blank"> proposed adjournment</a> of the meeting. Nevertheless, the meeting went ahead on Monday without adjournment, and the Scheme was
<a href="http://www.ukwire.co.uk/cgi-bin/articles/200211111310396163D.html" target="_blank"> voted
down</a>.</p>

<p>Now you might think that was the end of it, but HVY's board, which had
already recommended Mr Poon's previous proposal, was willing to recommend
another proposal, this time by means of a general offer for all the shares he
doesn't own, at the same price. That recommendation mean the UK Panel can waive
the <a href="http://www.thetakeoverpanel.org.uk/code/coderules.pdf" target="_blank">UK
Takeover Code Rule 35.1</a> which requires a period of 12 months before a
subsequent offer, and it has apparently done so. It would certainly be something
of a stretch to call the new offer a variation of the old one, since the old one
had been voted down.</p>

<p>The difference between a general offer and a scheme of arrangement is that
the offer can be accepted or declined by each shareholder individually, while a
scheme of arrangement is an all-or-nothing deal. The <a href="http://www.ukwire.co.uk/cgi-bin/articles/200211081624415711D.html" target="_blank">new
offer</a> does not require any vote and is conditional on acceptances for
50% of the shares Mr Poon doesn't own (taking his holding to 75%), although that
condition could be waived.</p>

<h3>The Big Squeeze</h3>

<p>In the UK, under the <a href="http://www.fsa.gov.uk/ukla/1_listinginfo4.html" target="_blank">UK
Listing Rules</a>, <a href="http://www.fsa.gov.uk/pubs/ukla/chapt01-3.pdf" target="_blank">Rule
1.21</a> allows the board of a listed company to simply withdraw the company
from listing after giving 20 business days' notice to shareholders that it will
do so. It sounds like a licence for abuse.</p>

<p>By contrast, the voluntary delisting of a HK company (with no other listing
elsewhere) under <a href="http://www.hkex.com.hk/rulereg/listrules/CH6.doc" target="_blank">Listing
Rule 6.12</a> requires the approval of 75% of shares voted by independent
shareholders other than the directors, chief executive and controlling
shareholders.</p>

<p>The offer announcement for HVY states:</p>

<blockquote>
<p>&quot;In the event that the Offer becomes or is declared to be unconditional
in all respects it is probable that the listing of Harvey Nichols Shares on the
Official List will be cancelled...A decision in relation to de-listing will be
made by the Board of Harvey Nichols following the Offer becoming or being
declared unconditional in all respects; shareholders will be informed of that
decision at the appropriate time.&quot;</p>

</blockquote>
<p>In other words, take the offer or risk holding unlisted shares. Of course,
that is not an attractive option - without the UK Listing Rules, a company has
much lower disclosure requirements (for example, no interim reports or
announcements of transactions) and no market for the shares. In Hong Kong, we
called this the <a href="hobsonschoice.asp" target="_blank">Hobson's Choice on
Privatisations</a> that was used to force minorities into accepting low-ball
privatisation bids.</p>

<p>Following such pressure, the
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Hong
Kong Takeover Code</a> was overhauled and in Feb-02 the loophole was 
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=02PR5" target="_blank">closed</a>.
Now, under Rule
2.2 of the Code, an offer can only result in a delisting if the offeror
acquires enough shares to exercise, and actually exercises, its legal rights of
compulsory acquisition, thereby owning 100% of the company. To exercise those
rights, an offeror for a HK-incorporated or UK-incorporated company&nbsp; would
have to acquire 90% of the free float, and in the case of HVY, Mr Poon would
have to own 97.5% before he could buy the remaining 2.5%. Otherwise, the listing
would be maintained.</p>

<p>Just for once, it's nice to note that Hong Kong regulators have closed a loophole that is still open in London.
Still, Hong Kong is famous for its exports, and bad governance techniques seem
to be our latest product. The UK regulators had better close this loophole and give minority
shareholders a veto over voluntary delisting, otherwise they can look forward to
a string of imitations.</p>

<p><i>Your Editor is a member of the Hong Kong Takeovers and Mergers Panel.</i></p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4820">DICKSON CONCEPTS (INTERNATIONAL) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49013">HARVEY NICHOLS GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2546">Poon, Dickson</a></li>
				
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