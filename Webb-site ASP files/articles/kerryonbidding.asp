
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

<script type="text/javascript">document.title="Kerry on Bidding, Mr Kuok";</script>

	<div class="summary">There's been a small initial increase in the bid for Kerry Properties, but it won't be enough to clinch the deal at 47% discount to NAV. When Henderson Land upped  its bid for Henderson Investment, it ruled out a further increase, painting itself into a corner. Kerry Holdings has been wise enough not to do the same thing. We take a look at the other property holdings of key player Capital Group, who would have a lot to lose by accepting this derisory offer.</div>

<h2 class="center">Kerry on Bidding, Mr Kuok<br>
<span class="headlinedate">2 May 2003</span></h2>
<p>Robert Kuok Hock-nien's Kerry Holdings Ltd today
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030502/LTN20030502034.pdf">announced</a> 
an initial increase in its  privatisation offer for
<a target="_blank" href="http://www.kerryprops.com">Kerry Properties Ltd</a> (<b>KP</b>, 
0683), now offering $9.50 per share, up from the previous $8.50. The bid still 
represents a <b>47%</b> discount to balance sheet NAV of $17.94 per share at 31-Dec-02 and 
is only 10 cents above the 52-week high of $9.40. It's an offer which is wholly 
inadequate and derisory.</p>

<h3>Where others have failed...</h3>

<p>The balance sheet value of $17.94, remember, is supposed to be a <i>&quot;true and 
fair view&quot;</i> of what the board of directors collectively thinks the net assets 
are worth at the balance sheet date. Surely that figure cannot have come down by 
47% in 4 months since the year end.</p>

<p>The offer discount compares poorly to the 18.8% at which Realty Development was 
successfully privatised in February, the 28.6% discount on Ryoden Development' 
successful deal in Sep-02, and the 38.0% discount at which Henderson Investment's 
privatisation failed in Jan-03. To compare, here's what the offer would be at 
the same discounts:</p>

  <table class="numtable center">
    <tr>
      <td class="left"><i>Target</i></td>
      <td><i>Disc.</i></td>
      <td><i>Result</i></td>
      <td><b><i>Corresp.<br>price for KP</i></b></td>
    </tr>
    <tr>
      <td class="left">Realty Dev Corp</td>
      <td style="color:blue"><b>18.8%</b></td>
      <td style="color:blue"><b>Passed</b></td>
      <td style="color:blue"><b>$14.57</b></td>
    </tr>
    <tr>
      <td class="left">Ryoden Development</td>
      <td style="color:blue"><b>28.6%</b></td>
      <td style="color:blue"><b>Passed</b></td>
      <td style="color:blue"><b>$12.81</b></td>
    </tr>
    <tr>
      <td class="left">Henderson Investment</td>
      <td style="color:red"><b>38.0%</b></td>
      <td style="color:red"><b>Failed</b></td>
      <td style="color:red"><b>$11.12</b></td>
    </tr>
  </table>

<p><i>Note: RDC and Ryoden discounts are discounts to adjusted 
NAV as stated in the shareholder circulars, while Henderson Inv is a 
Webb-site.com estimate based on fair value of investments. </i></p>

<p>In 1996, KP was floated at a 33% discount, or 67 cents on the dollar. The 
initial increase in the privatisation offer is pitched at 53 cents per dollar of NAV. We think that if 
Mr Kuok wants to take his company private again, he should at least pay back 
that 67 cents on the dollar, which would work out at <b>$12.02</b> per share.</p>

<p>If it were not for the fact that the paid announcement appeared in today's South China Morning Post, which Kerry 
Holdings also controls, we would suggest 
that they had been wasting money announcing it. But SCMP needs the advertising revenue, 
so we won't begrudge them that. <a target="_blank" href="../dbpub/articles.asp?p=641">SCMP Group Ltd</a>, which owns the paper, is also a 
shareholder of KP.</p>

<h3>Wisely leaves room for increase</h3>

<p>Kerry has not ruled out a second increase in their offer to a more realistic 
and sensible level. This was a wise 
move on their part. When Henderson Land misjudged the market and increased its 
offer for <a target="_blank" href="../dbpub/articles.asp?p=413">Henderson Investment</a> by just 3.4%, they
<a target="_blank" href="paintedcorner.asp">painted themselves into a corner</a> 
by making a &quot;no increase&quot; statement which, under
Rule 18.3 of the 
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Takeover Code</a>, which prohibited 
them from increasing the offer. As a consequence, they were unable to respond to 
the opposition and they lost the bid. Kerry has kept its options open.</p>

<h3>Capital Group has a lot at stake</h3>

<p> <a target="_blank" href="http://www.capgroup.com/">
Capital Group</a>, one of the largest institutional investors in Hong Kong,
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=1470&sa2=np&scpid=1668588&sa1=pl&scsd=01/04/2003&sced=02/05/2003&pn=Capital+Group&src=MAIN&lang=EN">owns</a> 
about 5.33% of KP and is capable of blocking the deal, as it only takes 2.408% 
to block it. We believe they are a long-term value investor, making decisions 
for their clients in the interest of absolute returns rather than indexed, and 
Kerry has clearly misjudged their staying power. Capital Group must also have 
regard to the precedent that this would set for other stocks in their portfolio 
which may also come under offer in the future - for example, 
they own
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=926&sa2=np&scpid=1668003&sa1=pl&scsd=01/04/2003&sced=02/05/2003&pn=Capital+Group&src=MAIN&lang=EN">
9.24% of Great Eagle Holdings Ltd</a>,
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=1015&sa2=np&scpid=1668002&sa1=pl&scsd=01/04/2003&sced=02/05/2003&pn=Capital+Group&src=MAIN&lang=EN">
5.69% of Hang Lung Group Ltd</a>, a whopping 13.54% of its associate
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=1279&sa2=np&scpid=1668341&sa1=pl&scsd=01/04/2003&sced=02/05/2003&pn=Capital+Group&src=MAIN&lang=EN">
Hang Lung Properties Ltd</a>, and
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=1005&sa2=np&scpid=1668006&sa1=pl&scsd=01/04/2003&sced=02/05/2003&pn=Capital+Group&src=MAIN&lang=EN">
6.10% of Hysan Development Co Ltd</a>, all of which have major holdings of 
commercial property in Hong Kong. If Capital Group were to accept a low bid for 
KP, then they would get lower bids if the others are privatised in future.</p>

<p>Capital Group can block the deal, but they can't un-block it - there are 
other institutions and the retail public to consider. <i>Webb-site.com </i>editor David Webb is also a shareowner in KP and 
intends to vote against the offer unless it is increased to a fair and 
reasonable price. We don't have enough shares to stop the deal single-handed, 
but with other investors we can make the difference. So carry on bidding, Mr Kuok 
- you will have to do much better to clinch the deal, and still 
get a respectable discount.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=809">KERRY PROPERTIES LIMITED</a></li>
				
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