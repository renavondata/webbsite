
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

<script type="text/javascript">document.title="Veto CNOOC loans to parent";</script>

	<div class="summary">CNOOC just never seems to learn, and they are back to seek a new approval from minority shareholders to lend money to a parent vehicle. We call on investors to vote it down, and send a message to China, Inc. that the practice is unacceptable and we will not allow a repeat of the Japanese keiretsu/main bank system.</div>

<h2 class="center">Veto CNOOC loans to parent<br>
<span class="headlinedate">19 March 2007</span></h2>
<p>Will they never learn? It seems not. CNOOC Ltd (<b>CNOOC</b>, HK:0883, 
NYSE:CEO) has
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070307/LTN20070307114.pdf">
convened</a> a shareholder meeting for 30-Mar-07 to seek minority shareholders' 
approval for the continuation of loans (which it calls &quot;deposits&quot;) to CNOOC 
Finance Corp Ltd (<b>CNOOC Finance</b>), an unlisted vehicle majority-owned by 
CNOOC's state-owned parent, China National Offshore Oil Corporation (<b>CNOOC 
Parent</b>), for the next 3 years.</p>
<p>Imagine the outcry if Li Ka Shing proposed to set up a finance company and 
use it to take &quot;deposits&quot; from Cheung Kong and Hutchison Whampoa. It simply 
wouldn't get shareholders' approval, and nor should CNOOC.</p>
<p>Long-time readers will have a sense of <i>deja vu</i>. Back in 2004, in an 
Easter Eve announcement, CNOOC <a target="_blank" href="0883EGM040428.asp">
sought</a> minority shareholders' approval for the same arrangement. We 
campaigned against it, and we also accused CNOOC of breaking the Listing Rules 
for failing to seek prior approval for the same transactions since 2002. CNOOC
<a target="_blank" href="cnooc2.asp">denied</a> that it had done anything wrong, 
but a subsequent investigation by the Stock Exchange of Hong Kong Ltd (<b>SEHK</b>) 
proved us right, and on 6-Oct-05, the Exchange
<a target="_blank" href="CNOOCcensured.asp">censured</a> CNOOC for failing to 
seek shareholders' approval for the prior transactions. Richard Williams, Head 
of the Listing Division of SEHK, said at the time:</p>
<blockquote>
	<p>&quot;The Exchange views the failure to disclose and obtain prior independent 
	shareholder approval of connected party transactions very seriously. The 
	case is another example of the granting of financial assistance by a listed 
	issuer to a connected party over a lengthy period of time without proper 
	approval. Such conduct prejudices the interests of independent shareholders 
	in that they are not being given information on a timely basis or invited to 
	approve the transactions before they are implemented.&quot;</p>
</blockquote>
<p>Unfortunately, due to the tight meeting notice period which included Easter 
2004, the voter turnout was low, and we failed to mobilise enough shareholders 
to vote down the proposal, so CNOOC got its 3-year approval which now expires. 
However, later that year, when listed sister company China Oilfield Services Ltd 
(<b>COSL</b>, 2883) <a target="_blank" href="cosloans.asp">asked</a> 
shareholders to approve the same kind of transactions with CNOOC Finance, we 
campaigned against it and the proposal was <a target="_blank" href="coswin.asp">
voted down</a> by 62.92% of votes.</p>
<h3>There they go again...</h3>
<p>CNOOC has a history of seeking minority shareholders' approval for proposals 
against their interests. The last one to catch our eye was a request that 
minority shareholders tear up a non-compete undertaking which had been given by 
CNOOC Parent when CNOOC was listed. The undertaking assured that CNOOC Parent 
would not engage in oil exploration and production, and hence any deals worth 
doing would be done by the listed company. CNOOC Parent wanted that undertaking 
amended to exclude deals onshore or outside the PRC, without offering anything 
in return. We <a target="_blank" href="CNOOCnoncompete.asp">lobbied</a> against 
that proposal, and in a Saturday New Year's Eve meeting, shareholders
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060103/LTN20060103073.pdf">
voted it down</a> by 59.08% of votes. It was only 9 days later that we found out 
why CNOOC was in such a hurry to waive the non-compete undertaking for its 
parent. On the evening of 9-Jan-06, CNOOC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060109/LTN20060109091.pdf">
announced</a> a deal in Nigeria, and its stock gained 3.7% the next day, adding 
HK$8bn to the valuation. If the vote had gone the other way, the Nigerian deal 
might well have gone to the parent.</p>
<p>Meanwhile, on 29-Sep-06, CNOOC Parent
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060918/LTN20060918000.htm">
listed</a> a third subsidiary on SEHK, fertilizer maker China BlueChemical Ltd 
(3983). Again, this company obtained a pre-IPO waiver for giving financial 
support to CNOOC Finance, but this time, among the many connected transactions 
the listed company has with the rest of the group, it only obtained approval for 
loans to CNOOC Finance for 1 year after listing (see
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060918/03983/EWP116.pdf">
page 147-148</a>). So before 29-Sep-07, they must either move their money to 
banks, or seek minority shareholders' approval to continue lending to CNOOC 
Finance, in which case, we will be ready to oppose them. Sooner or later, they 
will learn.</p>
<h3>The IFA</h3>
<p>Incidentally, CNOOC has resorted to a fairness opinion from 
<a target="_blank" href="http://www.icea.com.hk">ICEA Capital Ltd</a>, 
a subsidiary of Industrial and Commercial Bank of China (<b>ICBC</b>), which is 
listed in CNOOC's annual report as one of its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060413/00883/EWF126.pdf">
Principal Bankers</a>. Have these people no concept of conflict of interest?</p>
<p>If you look back at similar situations, you will find that ICEA also
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050922/LTN20050922091.pdf">issued</a> a fairness opinion to PetroChina Co Ltd (857) for similar 
arrangements on 22-Sep-05. At the meeting on 8-Nov-05, the proposal
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20051109/LTN20051109053.pdf">
squeaked</a> through with just 56.28% of votes in favour. We should have pushed 
against that, but we don't have time to fight every battle. ICEA also
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060424/LTN20060424292.pdf">
issued</a> the fairness opinion in a similar situation for China Petroleum &amp; 
Chemical Corp (<b>Sinopec</b>, 0386) on 21-Apr-06, which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060524/LTN20060524131.pdf">
passed</a> with 63.43% of votes in favour. Yes, ICBC is listed as first on the 
list of
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050404/0857/EWP117.PDF">
Principal Bankers</a> of PetroChina, and is a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060410/00386/EWF137.pdf">
P</a><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060410/00386/EWF137.pdf">rincipal 
Banker</a> of Sinopec.</p>
<p>We think SEHK's Listing Division should not have allowed a subsidiary of a 
principal banker to act as an independent financial adviser to a company. If 
banking isn't a business relationship, then what is it?</p>
<h3>Put an end to it, or see a repeat of Japanese history</h3>
<p>So CNOOC group is not the only group that has engaged in these practices. Nor 
is it restricted to the oil sector. In Dec-04 we warned you about
<a target="_blank" href="airchina.asp">Air China</a> (0753), and its pre-IPO 
waiver. Unfortunately that came up for
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061201/LTN20061201105.pdf">
renewal</a> at an EGM on 28-Dec-06 during the Christmas week, and was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20061229/LTN20061229057.pdf">
approved</a> by 93.17% of votes cast. Institutional shareholders were certainly 
asleep in the cockpit, and we didn't trigger the alarm, but the high figure in 
favour was almost certainly aided by strategic shareholder Cathay Pacific 
Airways Ltd (0293) which, after the Dragonair takeover, now owns 2,125m shares 
(17.34%) of Air China and would have counted as independent in this vote.</p>
<p>What is at stake here is a worrying trend among the mainland 
government-controlled groups to set up in-house finance vehicles for the pooling 
and control of group cash, mixing the assets of listed companies with those of 
their parents and siblings and ensuring that the purse-strings are controlled by 
the parent. Minority shareholders of HK-listed companies, particularly 
institutional shareholders, have an opportunity and <b>responsibility</b> to put 
an end to this practice and make clear that it is unacceptable. If they fail, 
then China's conglomerates will continue this practice and evolve to emulate the 
Japanese <a target="_blank" href="http://en.wikipedia.org/wiki/Keiretsu">
keiretsu/main bank</a> system of the 1980s, with companies in the group required 
to support each other through a centralised finance vehicle, leading to the 
unsound lending and risk concentration which was a contributory factor to the 
Japanese asset bubble and its 1990s collapse.</p>
<p>Now we know what you're thinking - the mainland banks aren't that great at 
credit controls either. True enough, but If anyone is going to do unsound 
lending, we'd rather the mainland banks did it than have the risk concentrated 
on one group, and there is at least the hope that companies like CNOOC would 
deposit money with better-run foreign banks who are now competing for business 
in China and are less likely to go bust in the next decade.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9164">CNOOC LIMITED</a></li>
				
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