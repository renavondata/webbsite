
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

<script type="text/javascript">document.title="HKEx should adjourn the AGM";</script>

	<div class="summary">Yesterday HKEx announced 3 new candidates for elections at next Tuesday's AGM, leaving practically no time for institutional shareholders to respond before their custodians close the voting window. Two of the candidates are backed by broker associations, who already have 4 members on the board. We call on the Chairman, if he believes in corporate governance and shareholder equality, to adjourn the AGM for 14 days to allow all shareholders time to submit new voting instructions on the elections.</div>

<h2 class="center">HKEx should adjourn the AGM<br>
<span class="headlinedate">9 April 2003</span></h2>
<p>Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>, 0388) yesterday
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030408/LTN20030408014.doc">
announced</a> that 3 new candidates have come forward for election as directors 
at the Annual General Meeting which has been convened for 4.30pm on Tuesday 
15-Apr-03. As a result, it is sending out a supplemental
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030408/LTN20030408066.pdf">
circular</a> to shareholders, which was not posted on its company announcements 
web site until 15:01 yesterday, HK time. A new
<a target="_blank" href="http://www.hkex.com.hk/relation/hldrcir/2nd-proxy-e.pdf">
proxy form</a> was also issued.</p>

<p>The three candidates were each nominated by shareholders (whose identity has 
not been disclosed) under Article 90(2)(b) of the
<a target="_blank" href="http://www.hkex.com.hk/exchange/asso/0316news1-hkec-ma.doc">
Articles of Association</a> of HKEx, the same article used to nominate <i>
Webb-site.com</i> editor David Webb three weeks ago, as explained in our article
<a target="_blank" href="HKExciting.asp">HKExciting</a>. The Articles allow 
directors to be nominated by shareholders only <i>&quot;not less than seven nor more 
than twenty-eight clear days&quot;</i> before the date of the AGM.</p>

<p>The new candidacies in two cases represent a last-ditch effort by the broker 
associations to squeeze out the investor-based candidacies of David Webb and 
Oscar Wong (CEO of BOC-Prudential Asset Management Ltd), and take advantage of 
the compressed timetable as we explain below.</p>
<p>The first candidate, Henry Chan (Mr Chan), is a Vice-Chairman of the
<a target="_blank" href="http://www.hksa.com.hk/">Hong Kong Stockbrokers 
Association</a> (<b>HKSA</b>) which already has 3 representatives on the board - 
Paul Fan Chor Ho, former Chairman of the HKSA, Dannis Lee Jor Hung, &quot;Permanent 
Honorable President&quot; of the HKSA and Yue Wai Keung (<b>Mr Yue</b>), a director 
of HKSA. All three are standing for re-election.</p>
<p>The second candidate, Kenneth Lam Kin Hing (<b>Mr Lam</b>), is a deputy 
Chairman of the <a target="_blank" href="http://www.isd.org.hk">Institute of 
Securities Dealers Ltd</a> (<b>ISD</b>). Vincent Lee Kwan Ho (<b>Mr Lee</b>), an 
incumbent director, is a Vice Chairman of the ISD. If all these candidates are 
elected, the board of HKEx would look more like the brokers' union. Indeed, in 
this morning's <i>South China Morning Post, </i>Mr Lee was quoted as saying that the two 
associations had held negotiations on forming an alliance to contest the six 
seats - but failed to reach an agreement. Both Mr Lee and Mr Lam have reportedly 
received the backing of Choi Chen Po Sum, the Chairman of the ISD who in the 
1990s was acquitted in court on bribery charges in relation to the approval of 
transfer of Stock Exchange seats while she chaired the membership committee of 
SEHK.</p>
<p>Incidentally, Mr Lam was recently
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=02pr210">
prosecuted</a> by the SFC for breaking the law on disclosure of interests. In 
2000, Mr Yue was
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=00pr110">
publicly reprimanded</a> by the SFC for compliance breaches in his brokerage.</p>
<p>The third candidate is David Parker, the Chief Operations Officer of
<a target="_blank" href="../dbpub/articles.asp?p=425">Sun Hung Kai &amp; Co Ltd</a>, one of the larger 
retail brokerages, and at least does not appear to be acting in cahoots with the 
other two. If he had come forward sooner, we might have been more supportive.</p>

<h3>Exploiting the Voting Timetable</h3>

<p>Most retail and institutional investors hold their shares through a bank, 
broker or custodian who in turn hold them in an account with the Central 
Clearing and Automated Settlement System (<b>CCASS</b>) operated by Hong Kong 
Securities Clearing Co Ltd (<b>HKSCC</b>), a subsidiary of HKEx. In turn, HKSCC 
Nominees Ltd, a subsidiary of HKSCC, is the registered shareholder of listed 
companies and acts as nominee for the account holders of CCASS.</p>
<p>CCASS has a proprietary electronic voting input system for custodians, banks, 
brokers and investor participants (the latter being the few retail investors who 
hold their stock directly rather than via a bank, broker or custodian).</p>
<p>It was not until this morning that CCASS amended its voting system to display 
the 3 new proposed resolutions (to elect each candidate), and extended the 
voting cut-off by one day, to Friday 11-Apr-03. The system shuts at 15:45 (HK 
time) each day. So there are now only 2 days left in which to input voting 
instructions.</p>
<p>In our enquiries today, a spokesman for HKSCC said that they will not honour 
previous voting instructions given by participants unless they receive revised 
instructions by Friday (being instructions either to accept the old votes or 
providing new ones). This is unacceptable as it risks discarding votes that were 
already made in good faith. Put simply, anyone who gave instructions up to 
yesterday did so in the belief that they would be followed, and it would be a 
miscarriage of justice if those instructions were now discarded, just because 
they were unable to comply with a new 2-day voting window. In addition, HKSCC is 
a subsidiary of HKEx and it would raise questions of whether they have followed 
investors instructions or internal (management) policy on which votes to accept.</p>
<p>There is absolutely no way that most institutional and retail investors will 
be able to meet this new timetable. At the latest, custodians will have to cut 
off voting on Thursday afternoon, 1 day from now, in order to have time to 
process their instructions.</p>
<p>The typical 7-stage process for voting is:</p>
<ol>
  <li>Listed company sends circular and proxy form to 
  registered shareholders, including HKSCC, by postal mail.</li>
  <li>HKSCC updates its voting input system, and sends 
  notification to custodians, banks and brokers of proposed resolutions 
  (normally this takes a few days, but this time they have done it in 1 day).</li>
  <li>Custodians prepare letters or faxes to clients, 
  summarising the proposals in proprietary format and seeking instructions on 
  how to vote the shares (allow a few days)</li>
  <li>Asset managers receive letters or faxes from 
  custodians, and consider how to vote, often through internal committees (allow 
  a few days)</li>
  <li>Asset managers tell custodians how to vote. (Allow 
  1-2 days for custodians to aggregate instructions from all clients).</li>
  <li>Custodians tell CCASS (HKSCC) how to vote (Allow 1 
  day for CCASS to aggregate instructions from its participants)</li>
  <li>HKSCC Nominees Ltd fills in its proxy form to vote 
  its shares, and submits it by the deadline (48 hours before the meeting). In 
  this case, that falls on a Sunday, so the practical deadline is Friday.</li>
</ol>
<p>This is why investors need the full 21-day timetable normally given to them 
as notice period for an AGM, and are usually working at a stretch to meet the 
14-day notice period for some EGMs.</p>
<p>This fact cannot have escaped the attention of the broker candidates. They 
know that their supporters, almost all of whom are brokers in Hong Kong with 
their own CCASS input terminals, will be able to vote by Friday, in favour of 
their own new candidates, and that most institutions will not be able to respond 
in time to vote against. This election is being held on a &quot;net votes&quot; system, 
where the votes will be tabulated as the sum of votes in favour minus votes 
against, and the 6 highest scores will win. This timetable makes it grossly 
unfair to the existing candidates and to the institutional investors who will be 
unable to express their opinions on the new resolutions. Supporters of Webb and 
Wong would likely vote against the new candidates, if given the opportunity to 
vote.</p>

<h3>Adjournment should be required</h3>

<p>The Listing Rules of Hong Kong, weak as they are, do set out &quot;General 
Principles&quot; in
<a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/CH2.doc">Rule 
2.03</a> which include that <i>&quot;all holders of listed securities are treated 
fairly and equally&quot;</i>. Rule 2.04 goes on to state <i>&quot;It is emphasised that 
the Exchange Listing Rules are not exhaustive and that the Exchange may impose 
additional requirements...whenever it considers it appropriate.&quot;</i></p>

<p>In this case, the <b>only way</b> for all shareholders to be treated &quot;fairly 
and equally&quot; and justice to be done is to give them all sufficient time to 
consider the new resolutions, by adjourning the AGM for at least 14 days.</p>

<p>Article 69(2) of HKEx states:</p>

<blockquote>

<p>&quot;the Chairman of the meeting may at any time without the consent of the 
meeting adjourn the meeting...to another time and/or place if, in his opinion, 
it would facilitate the conduct of the business of the meeting to do so.&quot;</p>

</blockquote>

<p><b>If the Chairman of HKEx, Charles Lee Yeh-kwong, is a true believer in 
corporate governance and treating all shareholders fairly, then he should 
exercise his power to adjourn the meeting for 14 days.</b></p>

<p>The existing board will remain in place until the adjourned meeting is 
concluded. No shareholder would be disadvantaged by an adjournment, and all 
shareholders will then be given sufficient time to vote. No further candidates 
could be nominated in the new voting period, because the articles only allow 
nomination up to 7 days before the date appointed for the original meeting.</p>

<p>This principle of equality is also spelt out in IIA(3) of the
<a target="_blank" href="http://www.oecd.org/pdf/M00008000/M00008299.pdf">OECD 
Principles of Corporate Governance</a> which state:</p>

<blockquote>

<p>&quot;Processes and procedures for general shareholder meetings should allow for 
equitable treatment of all shareholders. Company procedures should not make it 
unduly difficult or expensive to cast votes&quot;</p>

</blockquote>

<p>In the notes to this principle (p33), the OECD goes on to warn that:</p>

<blockquote>

<p>&quot;Proxy materials may be sent too close to the time of general shareholder 
meetings to allow investors adequate time for reflection and consultation.&quot;</p>

</blockquote>

<p>That is exactly what is going on here.</p>

<h3>And if Mr Lee doesn't adjourn the meeting?</h3>

<p>In the case of HKEx, to remove the conflict of regulating itself, there is a 
special
<a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/CH38.doc">
Chapter 38</a> in the Listing Rules pursuant to which the Listing Rules 
applicable to HKEx are administered by the Securities and Futures Commission (<b>SFC</b>).</p>

<p>So we call on the SFC to show its mettle and require that the Chairman of 
HKEx adjourn the meeting in order to comply with the General Principles set out 
in Listing Rule 2.03. If the SFC so requires, but Mr Lee chooses to ignore this, 
then it will be just one more reason why HKEx is not fit to be a regulator of 
listed companies. </p>

<h3>And after this, let's amend the Rules</h3>

<p>This is yet another example in which the Listing Rules badly need reform. It 
should be possible for shareholders of listed companies to nominate directors at 
any time, and not have to wait until 28 days before the AGM, and similarly, 
there should be a deadline for nomination which gives investors sufficient time 
to make a decision, and for the company to send out a single proxy form listing 
all the candidates.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
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