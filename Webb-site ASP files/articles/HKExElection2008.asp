
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

<script type="text/javascript">document.title="Bob Bunker runs for HKEx Board";</script>

	<div class="summary"><i>Webb-site.com</i> is pleased to announce that Bob Bunker has accepted a nomination to run in the contest for election as a director of HKEx. Two board seats are available. We recommend shareholders vote in favour of Mr Bunker and incumbent director Mr Bill Kwok Chi-piu, and against all other candidates. We also update you on the Ocean Grand case.</div>

<h2 class="center">Bob Bunker runs for HKEx Board<br>
<span class="headlinedate">31 March 2008</span></h2>
<p><i>Webb-site.com</i> is pleased to announce that Mr Robert Edward John Bunker 
(<strong>Bob Bunker</strong>), 
has today accepted a nomination for election as an independent non-executive director 
(<strong>INED</strong>) of Hong 
Kong Exchanges and Clearing Ltd (<b>HKEx</b>, 0388). He will be running in a 
contest with two incumbent candidates and any other candidates whom shareholders 
may nominate. The shareholder election, for two seats on the board, takes place 
at the Annual General Meeting on 24-Apr-08.</p>
<h3>The new candidate</h3>
<p>Bob Bunker, 62, is currently a director of the
<a target="_blank" href="http://www.hksi.org">Hong Kong Securities Institute</a> 
(<strong>HKSI</strong>), the main examinations body for securities industry 
professionals, and has served as a member of the Main Board and GEM Listing 
Committees of the Stock Exchange of Hong Kong Ltd (a subsidiary of HKEx) since 
19-May-06. If elected to the Board of HKEx, he will step down from the Listing 
Committees to avoid any conflict of interests.</p>
<p>He is also an executive director of
<a target="_blank" href="http://www.bentleyreidgroup.com/">Bentley Reid &amp; Co 
(Pacific) Ltd</a>, a wholly-owned subsidiary of
<a target="_blank" href="http://www.butterfieldbank.bm/">Bank of N.T. 
Butterfield &amp; Son Ltd</a>. He was a founding director of HKSI, former Chairman 
of the Hong Kong Institute of Investment Analysts, and former Vice Chairman of 
the <a target="_blank" href="http://www.asaf.org.au/">Asian Securities Analysts 
Federation</a>.</p>
<p><em>Webb-site.com</em> editor and elected HKEx INED David Webb, said: &quot;I am delighted that 
Bob has accepted this nomination. Having made Hong Kong his home since 1979, he 
has a long and deep experience of Hong Kong financial affairs and has served the 
investment community extensively. I am sure that he would be a great addition to 
the board of HKEx.&quot;</p>
<h3>Incumbent candidates</h3>
<p>There are two incumbent directors running for re-election to HKEx: Bill Kwok 
Chi-piu (<strong>Mr Kwok</strong>) and Vincent Marshall Lee Kwan-ho (<strong>Mr 
Lee</strong>). Both were first elected on 3-Apr-00, prior to the listing of 
HKEx. <em>Webb-site.com</em> is endorsing Mr Kwok and opposing Mr Lee's 
re-election for the reasons stated below.</p>
<h4>Mr Kwok</h4>
<p>Mr Kwok, 55, is Managing Director of
<a target="_blank" href="http://www.wocom.com.hk/">Wocom Holdings Ltd</a>, which 
owns stockbroker Wocom Securities Ltd and derivatives broker Wocom Ltd. His 
family's business is the century-old
<a target="_blank" href="http://www.wingonet.com">Wing On Department Stores</a> 
owned by Wing On Company International Ltd (0289), of which he is a 
non-executive director. He also serves on the Hong Kong Takeovers and Mergers 
Panel (as does David Webb) and the Securities and Futures Appeals Tribunal, and 
is a director of the HKSI and a member of the one of the investigation panels of 
the HKICPA. David Webb said &quot;although Bill and I have sometimes been on opposing 
sides of the debate, including on the further reduction of trading spreads, I 
respect the way he brings his perspective to the table and his extensive service 
to the financial community as a whole&quot;.</p>
<h4>Mr Lee</h4>
<p>Mr Lee, 52, is Managing Director of the 
<a target="_blank" href="http://www.etungtai.com/">Tung Tai Group</a> founded by 
his father. It owns stockbroker Tung Tai Securities Co Ltd and derivatives 
broker Tung Tai Futures Ltd. Mr Lee is Chairman of the
<a target="_blank" href="http://www.isd.org.hk/">Institute of Securities Dealers 
Ltd</a>, one of the two small-broker lobbies in Hong Kong, the other being the
<a target="_blank" href="http://www.hksa.com.hk">Hong Kong Stockbrokers 
Association Ltd</a>.</p>
<p>Mr Lee was appointed as an INED of <a target="_blank" href="../dbpub/articles.asp?p=15208">Linefan 
Technology Holdings Ltd</a> (<strong>Linefan</strong>, 8166) on 15-Sep-01, 
before its 5-Feb-02 listing. On the same day, Michael Yip Kim-po (<strong>Mr Yip</strong>) 
was appointed non-executive director and Honorary Chairman of Linefan. Mr Yip is 
the controlling shareholder of the now-collapsed
<a target="_blank" href="../dbpub/articles.asp?p=4929">Ocean Grand Holdings Ltd</a> (<strong>OGH</strong>, 
1220) which was once a substantial shareholder of Linefan. OGH acquired its 
stake in Feb-00 for either RMB1.6m (if you believe the Linefan prospectus), or 
HK$148m (if you believe OGH). The discrepancy has not been explained and is 
something which authorities should investigate if they haven't already.</p>
<p>Both Mr Lee and Mr Yip
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20021107/GLN20021107029.pdf">
resigned</a> from Linefan on 16-Oct-02 - in fact, by amazing coincidence, 4 
directors simultaneously decided that they needed to focus on their other 
businesses and quit. Mr Lee was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031204/LTN20031204078.pdf">
appointed</a> as an INED and audit committee member of OGH on 4-Dec-03, and was 
elevated to Chairman of the audit committee on 22-Apr-05. He
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060725/LTN20060725046.pdf">
resigned</a> for <em>&quot;personal reasons&quot;</em> on 21-Jul-06. On 24-Jul-06, the 
company was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060725/LTN20060725042.pdf">
put</a> into provisional liquidation, after auditors found <em>&quot;potential 
accounting irregularities&quot;</em> and a RMB840m shortfall in cash balances.</p>
<p>We covered the many problems of OGH and its collapse in more detail in our 
article <a target="_blank" href="oceangrand.asp">Ocean Grand's Shipwreck</a> of 
31-Jul-06, so read that if you want more details. In our view, a diligent, 
competent independent director should have uncovered at least some of the 
problems (which occurred over a number of years) and all the INEDs of OGH, 
including Mr Lee, failed in that respect. This is why, as a member of the HKEx 
Nomination Committee, your editor David Webb voted against Mr Lee's nomination 
for re-election. His nomination was approved by majority.</p>
<p>Mr Lee has served on the audit committee of HKEx since 2003.</p>
<h3>Ocean Grand update</h3>
<p>Since our last article on Ocean Grand, events have moved on. The Chairman of 
OGH, Michael Yip Kim Po (<strong>Mr Yip</strong>), became a fugitive in the 
mainland but returned to HK on 18-Sep-07 and was immediately
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?pp_cat=1&amp;art_id=53732&amp;con_type=1">arrested and charged</a> by the Commercial Crime Bureau of the police who issued 
a
<a target="_blank" href="http://www.info.gov.hk/gia/general/200709/18/P200709180250.htm">
statement</a>.</p>
<p>There are two sets of charges against Mr Yip and others. The first set 
relates to the suspicions we raised in our article regarding the incredible 
(i.e. not credible) profit margins of the chemicals processing business of Ocean 
Grand Chemicals Ltd (<strong>OGC</strong>) a subsidiary of OGH, which in turn 
were carried out through its subsidiary Kenlap P.G.C. Manufacturer Co Ltd (<strong>Kenlap</strong>). 
In this segment, OGC had for years been reporting operating profit margins of 
between 85.8% and 98.8% of turnover, but of that turnover, only about 15% was 
paid up-front and the rest of the sale was booked as a lengthy receivable. </p>
<p>So it comes as no surprise to us that the charges include allegations that 
between Jun-04 and Jun-06 Mr Yip used false invoices of sales by Kenlap to 
obtain financing from Bangkok Bank, and that the group turnover was falsely 
inflated in the reports of OGH for the years ended 31-Dec-04 and 31-Dec-05 and 
correspondingly in OGC reports too. If the turnover was inflated, and the profit 
margin was over 90% of that turnover, then it follows that the profit would have 
been inflated too.</p>
<p>The second set of charges relate to a particular HK$153m acquisition of 
equipment by OGH
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051103/LTN20051103095.pdf">
announced</a> on 1-Nov-05 and covered in a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051121/LTN20051121095.pdf">
circular</a> on 21-Nov-05. Mr Yip is charged with making false statements that 
the vendor of the equipment was independent and that the price had been agreed 
by arms-length negotiation. He is also charged with conspiracy to steal the 
purchase price of about HK$153m.</p>
<p>You can read the two sets of charges, as presented in the magistracy,
<a target="_blank" href="../codocs/OGchargesSet1.pdf">here</a> and
<a target="_blank" href="../codocs/OGchargesSet2.pdf">here</a>. All the 
defendants are of course innocent unless proven guilty, and the charges may be 
amended, supplemented or withdrawn before the pending trial.</p>
<p>Meanwhile OGH, now being run by the provisional liquidators, has filed a writ 
in the High Court naming 15 defendants including all the directors of OGH, 
including Mr Lee, seeking damages of HK$111.1m plus interest and costs as a 
result of claimed breaches of duties in connection with the equipment purchase. 
Further details are on page 11 of the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080325/LTN20080325187.pdf">
HKEx AGM circular dated 26-Mar-08</a>.</p>
<h3>Voting system</h3>
<p>HKEx has set an advisory deadline for nominations at 5pm on Tuesday 8-Apr-08. After 
that, a 
supplementary circular and proxy form will be published containing details of all candidates. If any more candidates are 
nominated after that, then under the Listing Rules, HKEx will have to adjourn 
the annual general meeting to allow shareholders 14 days to vote.</p>
<p>IMPORTANT: each candidate is the subject of a separate &quot;for or against&quot; 
resolution. Candidates are elected on the basis of the highest net positive 
votes (votes in favour minus votes against), so it is important to vote in 
favour of the 2 candidates you want and vote against each of the other 
candidates. If you simply vote in favour of 2 candidates, but abstain on the 
others, then you will reduce the chance of your chosen candidates being elected, 
as supporters of other candidates will vote against yours. If fewer than 2 
candidates have net positive votes, then the board can appoint directors to fill 
the vacancy until the next shareholders' meeting.</p>
<h3>Recommendations</h3>
<p><i>Webb-site.com</i> urges investors to wait until the revised proxy form has 
been published before voting for or against each candidate. <em>Webb-site.com</em> 
recommends shareholders to <strong>vote in favour of Mr Bunker and Mr Kwok, and 
against all the other candidates</strong>.</p>
<hr>
<h4>Notes for editors:</h4>
<p>1. HKEx has 13 directors, only 6 of which can be elected by shareholders, 
with 2 seats falling vacant each year for a 3-year term. Six other directors are 
appointed outright by the HK Government, which also
<a target="_blank" href="interven2.asp">owns</a> 5.88% of HKEx. The other 
director is the Chief Executive of HKEx, who is unelected and whose appointment 
must be approved by the SFC, the directors of which are also appointed outright 
by the Government.</p>
<p>2. <em>Webb-site.com</em> editor David Webb is an existing elected INED of 
HKEx, elected on 15-Apr-03 and re-elected in a contested election in 2006. His 
current term expires at the AGM in 2009.</p>
<p>3. Of the six Government-appointed directors, the two-year terms of three of 
them expire at this year's AGM: Mr Ronald Joseph Arculli (69), Mrs Laura Cha 
Shih May-lun (58), and Mr Moses Cheng Mo-chi (58). All were first appointed on 
26-Apr-06. The Government usually keeps shareholders in the dark until after the 
AGM as to whom it will appoint or reappoint.</p>

<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17952">3DG HOLDINGS (INTERNATIONAL) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4929">ZHIDAO INTERNATIONAL (HOLDINGS) LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=7540">Bunker, Robert Edward John</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2485">Kwok, Bill Chi Piu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10814">Lee, Vincent Marshall Kwan Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6382">Yip, Michael Kim Po</a></li>
				
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