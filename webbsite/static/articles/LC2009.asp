
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

<script type="text/javascript">document.title="Tycoons gain in Listing Committee shake-up";</script>

	<div class="summary">Well what did you expect after the blackout saga? The changes are not subtle, and further diminish the outlook for corporate governance reforms in the Listing Rules. We take you through the changes and the likely shape of the committee until 2012 and its leadership until 2015.</div>

<h2 class="center">Tycoons gain in Listing Committee shake-up<br>
<span class="headlinedate">8 June 2009</span></h2>
<p>Readers will be well aware of the backlash from tycoons over
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/081230news.htm">
extending</a> the insider dealing blackout periods to start from the year-end 
until they get their results out. There were cries that the Listing Committee was 
&quot;stupid&quot;, an &quot;independent kingdom&quot;, &quot;a small circle dominated by 
foreign investors&quot;, 
&quot;out of control&quot; and 
so on. Perish the thought that international investors should have any say at 
all over how an international market is run, and erase from your mind the fact that the Listing Committee (<strong>LC</strong>) cannot change any 
rule without the SFC's approval. </p>
<p>The SFC (which had in November formally approved the rule) and the Government 
exerted huge political and regulatory pressure, implicitly threatening to (ab)use 
the SFC's &quot;nuclear option&quot; of amending the Listing Rule using 
<a target="_blank" href="http://www.hklii.org/hk/legis/en/ord/571/s23.html">section 23(5)</a> of the 
Securities and Futures Ordinance, which it had never used before. Eventually, 
the Listing Committee
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/090212news.htm">
caved in</a>, referring to the SFC's &quot;authoritative advice&quot; (a euphemism if ever 
there was), and the tycoons got what they wanted - no change except for an extra 
month of blackout before the annual results announcement. The interim results 
blackout stays at 1 month.</p>
<p>Anyway, given all the noise of the tycoons, and understanding HK's political 
structure, it comes as no surprise to us that the Listing Nominating Committee (<strong>LNC</strong>), 
which comprises 3 directors from HKEx and 3 from the SFC, has taken the 
opportunity of the annual review of the membership of the
<a href="../dbpub/officers.asp?p=13780&amp;hide=Y">SEHK Listing Committee</a> to
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/090605news.htm">
appoint</a> loyal people who are directly or indirectly on the tycoon payroll 
and can be trusted to do the right (or wrong) thing.</p>
<p>On the HKEx side, the LNC 
includes two members of Hong Kong's cabinet, the 
<a href="../dbpub/officers.asp?p=2287&amp;hide=Y">Executive Council</a>, 
namely HKEx Chairman <a href="../dbpub/positions.asp?p=675&amp;hide=Y">Ronald Arculli</a> and
<a href="../dbpub/positions.asp?p=4285">Laura Cha Shih May Lun</a>. On the SFC 
side, it includes non-executive Chairman Eddy Fong, who vocally urged the 
Listing Committee to overturn its decision and disclaimed that the blackout rule 
was originally an SFC proposal, despite a &quot;<a target="_blank" href="../codocs/BrianHo070710.pdf">smoking 
gun</a>&quot; letter from SFC Executive Director
<a href="../dbpub/positions.asp?p=24073">Brian Ho Yin Tung</a> back on 
10-Jul-07, which refers to the SFC &quot;championing&quot; the proposal and says they had 
&quot;no qualms in being associated with the proposal&quot;.</p>
<p>So here are the changes to the LC...</p>
<p>Straight in as Deputy Chairman goes <a href="../dbpub/positions.asp?p=2532">
Carmelo Lee Ka Sze</a>, a partner since 1989 of 
<a href="../dbpub/officers.asp?p=729&amp;hide=Y">Woo, 
Kwan Lee &amp; Lo</a> (<strong>WKLL</strong>), leapfrogging any LC 
member who was delusional enough to think they had a shot at a higher seat. WKLL 
is the firm co-founded by
<a href="../dbpub/positions.asp?p=148">Charles Lee Yeh Kwong</a>, first Chairman 
of Hong Kong Exchanges and Clearing Ltd (0388). The second and current Chairman 
of HKEx, <a href="../dbpub/positions.asp">Ronald Arculli</a>, was Managing 
Partner of WKLL until Jun-2000. WKLL is legal adviser to
<a href="../dbpub/adviserships.asp?p=729&amp;hide=Y">numerous tycoons' firms</a>, including Li Ka 
Shing's flagship Cheung Kong (Holdings) Ltd, (0001), Lee Shau Kee's Henderson 
Land Development Co Ltd (0012), Cheng Yu Tung's, New World Development Co Ltd 
(0017), the Kwok brothers' Sun Hung Kai Properties Ltd (0016) and many more 
besides.</p>
<p>Just to be extra safe though, the new LC members include
<a href="../dbpub/positions.asp?p=11279">Edith Shih</a>, the Company Secretary 
of Li Ka Shing's Hutchison Whampoa Ltd (0013). She also sits on the Executive 
Committee of <a href="../dbpub/orgdata.asp?p=33536">Helping Hand</a>, the 
charity chaired by Mr Aculli's wife Johanna, and vice-chaired by
<a href="../dbpub/positions.asp?p=591">Michael Lee Tze Hau</a>, whom the 
Government recently appointed as a director of HKEx.</p>
<p><a href="../dbpub/positions.asp?p=12921">Teresa Ko Yuk Yin</a>, partner of 
law firm Freshfields, moves up to the Chairman of the LC, where she will 
probably remain until her term expires in 2012. The top 3 seats are now occupied 
by partners of big corporate law firms, the other Deputy Chairman being
<a href="../dbpub/positions.asp?p=45444">John Douglas Moore</a> of Herbert 
Smith, who joined the committee only last year. So the Chairmanship will likely 
go to one of these three until 2015.</p>
<p>This is a major year for changes as the six-year term limits of seven of the 
27 appointed members have expired. One additional member is stepping down early 
- <a href="../dbpub/articles.asp?p=5346">Ernst &amp; Young</a> (<strong>E&amp;Y</strong>) partner <a href="../dbpub/positions.asp?p=39642">Paul Go Kai 
Lung</a>. But, with great imagination, the LNC has replaced him with another E&amp;Y partner, <a href="../dbpub/natperson.asp?p=49492">Anthony Leung Siu Tung</a>. Similarly, they have replaced departing 
<a href="../dbpub/articles.asp?p=1460">PricewaterhouseCoopers</a> (<strong>PWC</strong>) partner <a href="../dbpub/positions.asp?p=17834">Ernest Ip Koon Wing</a> with - 
no prizes for guessing - another PWC partner,
<a href="../dbpub/positions.asp?p=36859">Richard Sun Po Yuen</a>. Finally, 
departing <a href="../dbpub/articles.asp?p=5416">Deloitte Touche Tohmatsu</a> (<strong>DTT</strong>) partner
<a href="../dbpub/positions.asp?p=17453">Roger Best</a> is replaced with KPMG 
partner <a href="../dbpub/positions.asp?p=45331">Jack Chow Siu Liu</a>. So once 
again three of the big four accounting firms have partners on the committee - and 
none of the firms outside the big four do, even though they would face fewer 
conflicts, having fewer clients. According to the Webb-site.com database, PWC, E&amp;Y and KMPG 
currently act for 525 out of the 1267 primary-listed companies on SEHK, and DTT 
is top dog with 280.</p>
<p>Although there are conflict of interest rules which prevent an LC member 
sitting on a case in which his firm is advising, it is impossible to eliminate 
concerns of reciprocity by the other members - if a questionable IPO 
accountants' report is on the table, it could be your firm next time - so give 
them the benefit of the doubt. And if you think that the Big 4 are some 
guarantee of audit quality, think again. E&amp;Y is <a href="../dbpub/articles.asp?p=5346">
currently being sued</a> by the liquidators of Akai Holdings Ltd, one of the 
biggest corporate collapses in HK history (due to trial in Sep-09). The liquidators 
of Moulin Global Eyecare Holdings Ltd have commenced discovery against its 
latest auditor E&amp;Y, and are suing E&amp;Y's predecessor, KPMG. The self-regulatory 
HKICPA, in our view one of HK's weakest regulators, recently
<a href="../codocs/090119prDTT_BDO.pdf">settled</a> proceedings against DTT and 
didn't even have the balls to name the listed companies involved, but they were 
obviously <a href="../dbpub/articles.asp?p=1362">Guangnan (Holdings) Ltd</a> and
<a href="../dbpub/articles.asp?p=5141">GKC Holdings Ltd</a>.</p>
<p>The final three new appointees to the LC include two investment bankers:
<a href="../dbpub/positions.asp?p=49491">Jiang Guorong</a> of China 
International Capital Corp Ltd and <a href="../dbpub/positions.asp?p=49493">
Daniel Ng Meng Hua</a> of BOCI Asia Ltd; and
<a href="../dbpub/positions.asp?p=21734">Mary Ma Xuezheng</a>, Vice Chairman and 
former CFO of Lenovo Group Ltd (0992) (no, not the fictional, mouth-frothing 
Mary Ma of the HK Standard tabloid). The LNC might argue that she is an investor 
representative, as she now works for private equity buyout firm
<a target="_blank" href="http://www.tpg.com">TPG</a>, but that really puts her 
on the sell side since they normally only come into contact with the market when 
they are exiting in an IPO or privatising in a buy-out.</p>
<p>Next year, only one member's term expires, and that is
<a href="../dbpub/natperson.asp?p=25628">Stephen Hunt</a>, who runs an 
investment company, so the best that investors can hope for is that someone on 
the buy-side will replace him. In 2011, there is one expiring term, of
<a href="../dbpub/natperson.asp?p=2224">Roy Chen Yang Chung</a>, another 
investor and son of a co-founder of Hang Lung Group. In 2012, the terms of most 
of the remaining buy-side representatives expire, if they last that long. It is 
disappointing, but hardly surprising, that the LNC didn't take the opportunity 
to create more balance between the buy-side (investors) and the sell-side 
(issuers and their paid advisers) and instead tilted it further the other way. 
Investors remain heavily outnumbered, and the prospects for quarterly 
financial reporting (<a target="_blank" href="http://www.hkex.com.hk/consul/paper/Corporate%20governance%20issues.PDF">first proposed</a> in 
Jan-2002) and other important reforms 
(allowing independent shareholders to elect the so-called independent directors 
would be a start) now look very bleak indeed.</p>
<p>Now, for a few more words on the blackout and a study commissioned by an 
opponent of the blackout extension, from the brother of the Government Secretary 
whose department lobbied the LC to overturn it, see our
<a href="blackoutstudy.asp">side piece</a>.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14388">GEM Listing Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13780">SEHK Listing Committee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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