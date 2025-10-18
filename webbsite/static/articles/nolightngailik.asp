
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

<script type="text/javascript">document.title="No Light at Ngai Lik";</script>

	<div class="summary">Imagine a referendum in which the leader of your country declares that his proposals have been approved, without telling you the voting figures. Ngai Lik Industrial wins our "most stubborn company of the year" award by refusing to disclose the figures for a poll we demanded at its AGM. It's such a shame for a company which has delivered eight consecutive years of profit growth.</div>

<h2 class="center">No Light at Ngai Lik<br>
<span class="headlinedate">29 August 2003</span></h2>
<p>Our <a target="_blank" href="projectpoll1.asp">Project Poll</a>, launched in 
March this year, is best known for requiring poll voting (1-share-1-vote) at 
shareholder meetings of all 33 members of the Hang Seng Index, plus HKEx, 
thereby counting investor votes, in most cases for the first time. But we 
have also been quietly requiring polls at non-index companies in which <i>Webb-site.com
</i>editor David Webb is an investor. One of these is
<a target="_blank" href="http://www.ngailik.com">Ngai Lik Industrial Holdings 
Ltd</a> (<b>Ngai Lik</b>, 0332).</p>

<p>Requiring a poll is not as simple as it sounds, because we first have to 
withdraw 3 or 5 share certificates (depending on the country of incorporation) 
from the clearing system operated by Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>, 
0388), then transfer them into 3 or 5 separate names, then get them stamped at 
the Inland Revenue Department, and finally get them registered at the registrar. 
A lot of footwork, some expense and a few weeks later, we are ready to require a 
poll.</p>

<p>So far this year, we have required polls in meetings of 14 non-index 
companies, in addition to meetings of 27 of the 34 companies formally in Project 
Poll (the rest have yet to hold AGMs). So if you look hard, you can figure out 
our portfolio! Of the 41 companies polled so far, only one, Ngai Lik, has 
refused to disclose the poll results.</p>

<p>Yes, believe it or not, you can have a vote without getting the voting 
figures. We received a <a target="_blank" href="../codocs/NgaiLik030825.pdf">
letter</a> from Ngai Lik Executive Director and Company Secretary Jim Yeung 
Cheuk Kwong (<b>Mr Yeung</b>), who told us:</p>

<blockquote>

<p>&quot;According to the bye-laws of the Company, the chairman of the meeting is not 
required to disclose the voting figures on a poll. For this reason and in 
compliance with the Company's bye-laws, the poll results will not be posted on 
the Company's web page&quot;.</p>

</blockquote>

<p>It's what we call the &quot;yah booh sucks&quot; approach to investor relations, or &quot;if 
we don't have to, then we won't, and you can't make us&quot; - which is a great shame 
for a company which has done so well financially, delivering profit growth for 8 
consecutive years. If they were to improve their transparency and investor 
relations, they could well attract a better P/E then their historic 9.2x and 
prospective 8.4x.</p>

<p>Mr Yeung went on to assure us that all the resolutions were passed. But this 
refusal to disclose the voting figures defeats a key purpose of a poll, which is 
to accurately measure the level of support or opposition from shareholders for each proposal. Not disclosing the figures has nothing to do with 
compliance with the Company's bye-laws, and everything to do with stubborn 
resistance to improvements in transparency. The bye-laws would not be breached 
by publishing the poll results.</p>

<p>Since the proposals of an AGM are proposals made by the board, there is an 
obvious conflict of interest if the Chairman simply declares that his proposals 
have been passed without providing voting figures, which should be independently 
verified by the registrar.</p>

<h3>Listing Rules should be amended</h3>

<p>In 21st century Hong Kong, the Listing Rules of the Stock Exchange (which is 
owned by HKEx) do not even require companies to announce the outcome of 
shareholder meetings, let alone the polling figures. Nobody even knows whether 
all the resolutions were passed unless they attended the meeting. It completely 
frustrates the highest level of corporate governance, namely the oversight of 
companies by shareowners. We  call on the Stock Exchange to amend its 
Listing Rules to require electronic publication of the results and minutes of 
each shareholder meeting, including voting figures whenever a poll is taken, and 
as regular readers will know, we have also called on the Stock Exchange to require poll voting 
at every meeting, which is the only way to ensure that all investor votes are 
properly counted. Meanwhile, Project Poll requires this for companies in the 
Hang Seng Index.</p>

<h3>Another meeting looms</h3>

<p>We always try to work <u>with</u> our invested companies to improve their 
governance, rather than against them, and we did write to Mr Yeung and his 
Chairman before writing this article, inviting them to reconsider publishing the 
poll results (in which case this article would not be needed), but we did not receive a response.</p>

<p>Ngai Lik has another shareholder meeting coming up on 5-Sep-03 (see
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030818/LTN20030818056.pdf">
circular</a>), this time to seek independent shareholder approval for a 
connected transaction to sell the motorcycle engine business to a company owned 
by family trusts of the Chairman and two other executive directors. We'll be 
voting in favour, but we will demand a poll, because to this day, the main board 
Listing Rules still do not require poll voting on connected transactions, 
despite this having been included in the first GEM Listing Rules 4 years ago. So 
our votes sent via the clearing system of HKEx won't be counted without a poll.</p>

<p>But will the Chairman, who has a financial interest in getting approval for the connected 
transaction, again simply declare the outcome of the poll without 
publishing voting figures which are independently certified by the registrar? 
That would raise obvious suspicions.</p>

<h3>Breach of Listing Rules</h3>

<p>Incidentally, we did pick up a little breach of the Listing Rules in the 
annual report which has so far gone uncorrected; 
<a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/app16.doc">Appendix 16.12</a> requires the 
biographies of directors and senior managers to state any relationships between 
them. We saw a striking visual resemblance between executive directors Ms Ting 
Lai Ling and Ms Ting Lai Wah, as well as in their names, and at the AGM, they 
confirmed that they are sisters, a fact not disclosed in the report. That also 
means that Ting Lai Wah is the sister-in-law of the Chairman, Mr Lam Man Chan, 
who is married to Ting Lai Ling. </p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4927">Yuan Heng Gas Holdings Limited</a></li>
				
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