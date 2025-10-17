
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

<script type="text/javascript">document.title="HK legislation on the Internet - Part 2";</script>

	<div class="summary">In the second of a series of articles on Internet legislation, Laurie Lau, a PhD student in I.T. law at City University of Hong Kong, outlines the contractual issues behind online transactions.</div>

<h2 class="center">HK legislation on the Internet - Part 2<br>
<span class="headlinedate">2 February 2000</span></h2>
<p>In <a href="cyberlaw2.asp"> part
1</a>, I briefly explained some of the legal complexity that encompasses the Internet environment, especially when doing business transactions over the Internet such as formation of contract, the crucial procedure in a business transaction.  At present, forming contracts over the Internet in Hong Kong has very little legal protection, because our existing contractual law is geared up to a face-to-face scenario.  Therefore, in order to constitute a valid contract the following conditions must be
met:</p>
<ol>
  <li>there must be two or more separate and definite parties to the contract;</li>
  <li>these parties must be in agreement, that is, there must be an offer and acceptance;</li>
  <li>those parties must intend to create a legal relation in the sense that the promises of each side are enforceable simply because they are contractual promises;</li>
  <li>promises of each party must be supported by consideration.</li>
</ol>
<p>Traditional legal common sense has it that unless all four of the above conditions are satisfied, no contract is formed. I will put forward a scenario in the following paragraphs to test and identify some doctrinal problems that will arise when e-commerce trading is conducted ( assuming that, this is a fully computerised process ( an autonomous computer ) with no human involvement and that it is an one-off transaction ) under Hong Kong current legal context.</p>
<p>A buyer accesses an e-commerce site controlled by a seller ( whose server is located in Hong Kong ) - a greeting card merchant - and asks the price of greeting cards. The buyer has never had any dealings with the seller or the seller's e-commerce site before. Having checked that there are greeting cards in stock, the computer uses its knowledge to calculate a price by means of a complex formula that it has been evolved for such purpose. The computer then informs the buyer of the price at which it is prepared to sell the greeting cards. The buyer orders a quantity of greeting cards by clicking his mouse from the e-commerce site at the price quoted. The computer notifies the buyer that it accepts his order and the greeting cards will be despatched to the buyer and an appropriate debit will be made from his bank account. The seller (owner of the site) is not personally involved in the business transaction or may not be aware of such a transaction at all. Does the transaction constitute a valid contract ? If so, between whom ?</p>
<p>Discussion points about the above Scenario:</p>
<ol>
<li>Who or what is capable, at law, of being a party to a contract? It is a norm that both natural persons and legal persons
 are capable of being such parties.  However, under this scenario, the computer is not a natural person and neither the American
  nor English contract laws recognise it to be a legal person.  The chance of Hong Kong contract law recognising the computer as
   a legal person is virtually zero. Therefore, computers are not considered as parties to contracts. In our scenario, the autonomous
    computer clearly cannot constitute a contractual party as the Hong Kong law stands.</li>
<li>Issue of offer and acceptance. In both English and Hong Kong contract laws, the general analytical tool used for tests
 in court is 'offer' and 'acceptance'.  First, the court would usually ask "what was the device for the offer and acceptance?"
   What was the offer ? Would a mere indication of availability of greeting cards from the seller's e-commerce website constitute
    an offer? The answer, according to current Hong Kong contract law, is 'No',  for a good legal reason - this type of communication
     lacks the necessary intention for an offer and would probably be considered as a mere communication tool for advertisement,
      catalogues and shop displays. As the contractual law stands, request for information or provision of information cannot be
       regarded as an offer.  The court would probably regard the automatic response from the website a mere invitation to treat
        rather than an offer. However, on the other hand, the buyer's words and actions are construed. Therefore, the court would
         more likely to accept the buyer's order as an offer.  What about acceptance? Well, prima facie there is no apparent acceptance
          from the seller's e-commerce site for the buyer's offer.  Hence, our scenario fails the common law offer and acceptance rule.
           No valid contract is made.  Therefore, there is a fundamental doctrinal problem in e-commerce contract, particularly
            in the business-consumer context. However, English and Hong Kong common law systems are well known for their creativity.
             The court may consider such scenario meets the unilateral contract outfit, as in Great Northern Ry  v Witham, Judge Brett
              gave this classic formulation for unilateral contract :
<p>"If I say to another, ' if you go to York, I will give you one hundred pounds,' that is in a certain sense a unilateral
 contract. He has not promised to go to York. But, if he goes it cannot be doubted that he will be entitled to receive the one hundred pounds."</p>
</li>
</ol>
<p>If we reconstruct the classic formulation as ' If you deliver the greeting cards, I will give you the money 
I quoted to you (the website). '  The scenario will therefore be fit the bill. In fact, majority of e-commerce 
transaction / contract can only be regarded as unilateral contract in the form of  irrevocable offer that matures 
into bilateral contract with the buyer in respect to the transaction, unless one has pre-arranged a different type 
of off-line contract with the respective e-merchant, similar to most of the business-to-business transactions.</p>
<p>In practice to-day, e-merchant who does e-trading would twist the facts in order to fit their needs by virtually saying 
'if you order goods from me (my website), I will debit the amount from your credit card account first.  Then I will decide 
whether I would deliver the goods which you have placed order with my website later ' This is, well, not a bad idea for the e-merchant 
to have a few days or sometimes weeks of extra interest-free cash flow into theirs' business. Or, we Hong Kong e-consumers 
can try to demand for  ' you ( e-merchant ) deliver the goods I ordered first, then given the choice of debiting my credit card 
account/cash on delivery ( C.O.D.) at the amount I agreed with you (your website)'. Isn't it what we have been doing in a real 
shops every time? However, in reality, HK e-merchant is unlikely to accept our order except on their terms on the web-site, 
unless competition in the virtual market place has reached a stage which is strong enough to force them to do so. On the other hand, 
the government may introduce law to balance the bargaining power between e-merchant and e-consumer to safeguard interest of the two parties.</p>
<p>In the final part of this series, I will discuss some of the issues such as attribution and enforcement of the new Electronic 
Transactions Bill.  I will also sum up with a discussion on which common law countries have the foresight to provide better 
protection for both the e-merchant and e-consumer. In the meantime, we, e-consumers, have to beware of the e-merchant.</p>
<p>&copy;<i> Laurie Lau Yiu Chung, 2000.</i></p>
<p>Mr. Lau is a PhD student in I.T. law at
City University of Hong Kong. Click <a href="mailto:id1997@netvigator.com">here</a> to send him feedback. This paper is written to provide a general guide to the
relevant law. It does not attempt to be comprehensive in any way and is not
intended to provide legal advice of any kind. The views expressed are those of
the author and not necessarily of <i>Webb-site.com</i>.</p>
<p>If <i>you</i>
would like to contribute articles to <i>Webb-site.com</i>,
then <a href="../contact/">contact the Editor</a>.</p>

<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=132">E-commerce</a></li>
				
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