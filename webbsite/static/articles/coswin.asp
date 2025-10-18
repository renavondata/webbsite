
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

<script type="text/javascript">document.title="Investors Win at COS";</script>

	<div class="summary">In a good day for investor activism, shareholders of China Oilfield Services (2883) have rejected the company's plan to lend cash to its parent CNOOC group. We look at the implications.</div>

<h2 class="center">Investors Win at COS<br>
<span class="headlinedate">30 November 2004</span></h2>
<p>It's not often we can give you good news, so here's something to warm the 
proxies of your heart. A month ago, we <a target="_blank" href="cosloans.asp">
warned</a> that H-share China Oilfield Services Ltd (<b>COS</b>, 2883) was 
proposing to renew and expand a mandate to lend money to CNOOC Finance 
Corporation Ltd (<b>CNOOCF</b>), a subsidiary of state-owned parent China 
National Offshore Oil Corporation (<b>CNOOC</b>). We urged investors to vote 
against the proposal, because it is bad governance for a listed company to lend 
money to its controlling shareholders. It's your money, not theirs.</p>

<p>The vote was originally scheduled for 5-Nov-04, leaving a very short 
timetable in which to vote, but thanks to PRC regulations, the meeting was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041108/LTN20041108033.pdf">
adjourned</a> on the grounds that only 32.41% of the shares eligible to vote at 
the meeting were represented, falling short of the initial quorum of 50% of the 
eligible shares. In an adjourned meeting, no such quorum applies.</p>

<p>In Apr-04, CNOOC's other listed subsidiary, CNOOC Ltd (<b>CNOOCL</b>, 0833), 
sought and obtained a 3-year mandate to do the same thing, in a rushed meeting 
timetable in which many investors, including some ADR holders, had no time to 
react and turnout was only 21.9%. CNOOCL is incorporated in Hong Kong and so 
does not have to follow the same quorum rules as PRC-incorporated COS.</p>

<h3>PR battle</h3>

<p>Prior to the original meeting, COS had engaged in some aggressive public 
relations in which it claimed to media that the risk of depositing money with 
CNOOC Finance is not greater than putting money in <i>&quot;any other bank&quot;</i>. 
After we pointed out that CNOOC Finance was not a bank, on 1-Nov-04 they issued 
an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041102/LTN20041102021.pdf">
announcement</a> which corrected that but then said:</p>
<blockquote>

<p>&quot;With respect to the credibility of commercial banks in the PRC vis-a-vis 
that of CNOOC Finance, CNOOC Group was rated A2 by Moody's and BBB+ by The 
Standard and Poor's, which ratings, the Company believes, remain among the 
highest ratings assigned by these rating agencies to the PRC corporates, 
including commercial banks.&quot;</p>
</blockquote>

<p>Students of finance will spot the error in that statement - credit ratings 
are given to individual companies, not to whole groups. A subsidiary of a 
company may be highly geared and not credit worthy, but the parent can still be 
triple-A rated. That is due to the legal concept of limited liability - the 
debts of a company are not the debts of its parent. We checked with the agencies 
and sure enough, CNOOCF has no credit rating. But if you read the announcement, it 
carries the clear and misleading implication that CNOOCF is rated BBB+.</p>

<p>So we complained again, and then on 4-Nov-04 we get another
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041105/LTN20041105027.pdf">announcement</a> which 
says:</p>
<blockquote>
  <p>&quot;The Company would like to clarify that the credit ratings as 
  mentioned in the Clarification Announcement were for CNOOC and CNOOC Limited. 
  CNOOC Finance Corporation Limited was not assigned any credit rating by any 
  rating agency&quot;</p>
</blockquote>

<p>The meeting was adjourned the following day. On 9-Nov-04, COS published a 
revised
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041109/LTN20041109067.pdf">
proxy form</a> in which it unbundled the proposed connected transactions, as we 
had urged them to do. So now, instead of a single resolution covering all the 
connected transactions with CNOOC group, there were 6 different resolutions, the 
first 5 of which relate to necessary transactions for COS to carry out its 
ordinary business and the last one relating to the loans to CNOOCF, or as the 
company called it, <i>&quot;depositary services&quot;</i>.</p>

<p>The meeting took place on 29-Nov-04, and as you can see from the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041130/LTN20041130079.pdf">
official results</a>, the proposal relating to the loans to the parent group was 
defeated by 62.92% to 37.08%. The turnout at the meeting was 34.74% of eligible 
shares.</p>

<h3>The message</h3>

<p>There are several points that come out of this:</p>
<ol>
  <li>The vote at COS should deter other red-chips and 
H-shares from seeking authority to lend money to their parent groups in the 
future - because investors will not tolerate this and, provided they have 
sufficient notice, they will vote it down.</li>
  <li>CNOOCL got away with a mandate in Apr-04, but if the 
board, and more importantly, the controlling shareholder, really believe in good 
governance as they
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040406/0883/f107.pdf">
claim</a>, then they will publicly commit not to lend money to the parent group. 
We call on them to make this commitment.</li>
  <li>COS's independent financial adviser, Quam Capital 
Ltd, gets our black mark for blessing the proposal in the first place, and the 
independent board committee consisting of Independent Non-executive Directors 
Gordon Kwong Che Keung, Andrew Y Yan and Simon Jiang Xiaoming earn our criticism 
for allowing this to go to shareholders with their
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041025/LTN20041025071.pdf">
recommendation</a>. At the last count, Mr Kwong holds 18 directorships of 
HK-listed companies, 17 of which are as INED and one as NED. Perhaps he should 
cut his workload and focus on quality rather than quantity. Incidentally, one of 
his INED positions is at Quam Limited, parent of the IFA on this transaction. Mr 
Jiang is the son of Qiao Shi, the former Chairman of the National People's 
Congress. Mr Jiang was Chairman of loss-making property firm Vision Century 
Corporation Ltd (0535) until 16-Oct-03, where Mr Kwong is an INED.</li>
  <li>Investor activism can work, even in China.</li>
</ol>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16971">China Oilfield Services Limited</a></li>
				
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