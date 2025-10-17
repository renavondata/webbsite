
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

<script type="text/javascript">document.title="Webb-site.com launches Project Vampire";</script>

	<div class="summary">Webb-site.com announces the launch of Project Vampire and urges institutional investors worldwide to vote against the placing mandate at each AGM, as this is a license to dilute shareholder value and voting rights. We recommend standards set by UK institutional forums, as we explain.</div>

<h2 class="center">Webb-site.com launches Project Vampire<br>
<span class="headlinedate">16 March 2003</span></h2>
<p>In our previous article, we told you about <a href="projectpoll1.asp" target="_blank">Project
Poll</a>. After jumping through numerous hoops, we have arranged 5 registered
shareholders in each member of the <a href="http://www.hsi.com.hk/constituent/con_hsi.html" target="_blank">Hang
Seng Index</a>, plus Hong Kong Exchanges and Clearing Limited (<b>HKEx</b>), the
company which runs the market. These 5 will require a poll at each AGM, and your
votes will be counted. </p>

<p>Now it would be pretty boring if we got the votes counted and there were no
objections to anything! That brings us to Project Vampire - we need your votes
against the general mandate, a power which gives the directors the ability to
choose the owners of their company by placing new shares without offering them
to existing owners. </p>

<h3>VAMPIRE</h3>

<p>Project Vampire stands for &quot;Vote Against Mandate for Placings, Issues by
Rights Excepted&quot;. We call on all shareholders to vote AGAINST the general
placing mandate in each AGM of the 33 Hang Seng Index companies and HKEx itself,
and indeed for any other HK-listed companies in which you hold stock. </p>

<h3>Pre-emption rights</h3>

<p>A pre-emptive share issue is one in which
existing shareholders are given a right of first refusal, to maintain their
economic and voting rights by
subscribing for their share of a new issue, or alternatively to sell their
rights in the market. It protects both their voting stake and their economic
interests. Anything else is a non-pre-emptive issue. </p>

<p>Any non-pre-emptive discounted issue of shares represents a transfer of value
from existing shareholders to the subscribers, or placees. Their gain is your
loss. </p>

<p>As we explained in our article <a href="displacement.asp" target="_blank">Stop
Displacement</a> (23-Jan-02), the &quot;general mandate&quot; rule in Hong Kong allows an
issuer to obtain approval from shareholders (including the controlling
shareholder) to make non-pre-emptive issues of shares for cash (or for anything
else) at any time in the next year, up to a number
equal to 20% of the existing issued shares. So for example, a company with 100m
shares in issue can issue 20m more. The mandate can be &quot;refreshed&quot; an
unlimited number of times each year. </p>

<p>In its Jan-03 <a href="http://www.hkex.com.hk/library/listpaper/cc-e.pdf" target="_blank">conclusion
paper</a> on a consultation on the Listing Rules, HKEx said it plans to limit
the discount on such placings to 20%, except where the issuer is in a serious
financial position and the only way they can be saved is by an urgent rescue
operation. HKEx also plans to require that any refresh of the general mandate
during the year (other than the one granted at the AGM) would require minority
shareholders' approval, although that has already met with opposition from some
listed companies and the HKEx's plans may yet change. </p>

<h3>UK issues for cash</h3>

<p>Hong Kong has inherited its legal system and listing rules from
the UK. The difference is that while the UK has modernised in the last few
decades, in many areas HK has barely moved, and HK often diluted UK rules when
adopting them, leading to a divergence of standards. In the UK Companies Act,
there is a statutory right of pre-emption, so that any issues of shares for cash
must be done by rights issue <i>unless </i>shareholders disapply those rights by
passing a special resolution, requiring a 75% majority of those who vote. </p>

<p>By contrast, in HK, Bermuda and the Cayman Islands, there are no
statutory pre-emption rights, and it takes only a 50% majority of votes cast to
grant powers to the board to allot shares however they choose. This
fundamentally undermines the paramount governance mechanism of the shareholders'
meeting, because it allows management to pick and choose the shareholders by
allotment of shares. Management should not choose shareholders, shareholders
should. </p>

<p>As we first explained as long ago as 17-May-99 in our article <a href="placing.asp" target="_blank">The
Placing Game</a>, in the UK, pre-emption rights are only waived in respect of
issues for cash which are: </p>

<ul>
  <li>
    <p>a maximum of 5% of the company in any one year</li>
  <li>
    <p>a maximum of 7.5% in a rolling 3-year period</li>
  <li>
    <p>a maximum discount of 5% to the market price</li>
</ul>
<p>These <a href="http://www.ivis.co.uk/pages/gdsc4_2.html" target="_blank">Pre-emption
Guidelines</a> were actually set by institutional investors in 1987 through the <a href="http://www.ivis.co.uk/pages/gdsc4_1.html" target="_blank">Pre-emption
Group</a>, which includes issuers.</p>
<p>The UK guidelines on this and other investment matters are driven by the <a href="http://www.abi.org.uk" target="_blank">Association
of British Insurers</a> and the <a href="http://www.napf.co.uk/" target="_blank">National
Association of Pension Funds</a>. Both having proxy advisory services; the ABI
runs the <a href="http://www.ivis.co.uk" target="_blank">Institutional Voting
Information Service</a> and NAPF runs a <a href="http://www.votingissues.com/" target="_blank">Voting
Issues Service</a>. Between them, the members of the two organisations own over
half of all UK equities, so issuers almost always comply. The two organisations
tend to jointly agree the <a href="http://www.ivis.co.uk/pages/guidelines.html" target="_blank">Guidelines</a>,
and their members would normally veto any issuer who dares to go outside the
guidelines. That's the key
difference to Hong Kong -&nbsp; in the UK, investors can make policy rather than
suffer it.</p>

<h3>Issue of shares other than for cash</h3>

<p>In the case of issues of shares other than for cash, such as shares issued
for an acquisition, the UK Guidelines allow for a 5-year mandate to be granted
at the AGM for allotment of new shares up to one third of the existing shares,
so that the maximum number of new shares amounts to 25% of the enlarged company.
This is customarily renewed at each AGM. However, if shares issued for an
acquisition are immediately sold in a placing, known as a &quot;vendor
placing&quot;, then the <a href="http://www.ivis.co.uk/pages/gdsc1_4.html" target="_blank">guideline</a>
specifies that the shares must first be offered to existing shareholders in a
&quot;clawback&quot; unless the issue is smaller than 10% of the existing shares
and the discount is 5% or less.</p>

<h3>A message to listed companies</h3>

<p>You can earn considerable kudos from corporate governance watchers, and
probably a re-rating in your share price, if you adopt international best
practice and seek a general mandate at your AGM on the following basis: </p>

<ol>
  <li>
    <p style="margin-bottom: 6">The mandate to issue shares for cash, other than
    by a rights issue, shall be in respect of not more than 5% of the issued
    shares a the time of the mandate</li>
  <li>
    <p style="margin-bottom: 6">The discount for shares issued other than by a
    rights issue shall not exceed 5%.</li>
  <li>
    <p style="margin-bottom: 6">The mandate to issue shares for other purposes,
    including acquisitions, shall be for not more than 20% of the issued shares</li>
</ol>

<p>The first one to do this gets a free plug on <i>Webb-site.com</i>. </p>

<h3>All institutions should vote</h3>

<p>While it may be difficult for retail investors to vote via brokers and banks,
institutions have no such excuse, because they are professionals and have
custodians who are geared up for it. We suspect that many institutions have not
bothered to send votes to AGMs in the past, thinking that it would be a waste of
time since proxy votes are never disclosed or counted on a show of hands, and
they were right. Another reason would be that many companies have a majority
shareholder who determines the outcome anyway.&nbsp; </p>

<p>The head of one major institution we spoke to last week drew a sharp intake
of breath when we asked him to pull his pen out and vote. So don't be surprised
if the initial voting turn-outs are pretty low. </p>

<p>However, a warning to all institutions: if you don't vote, and we find out,
you will be named and shamed. You have a fiduciary duty to your beneficiaries to
exercise your voting rights - these are not just rights but also
responsibilities. How would we find out? Well, from 1st April, all holdings of
5% or more will be disclosed (the threshold reduces from 10%) so there will be a
lot of institutional disclosures. If turnout figures don't at least include
those disclosed holdings (plus disclosed directors' holdings) then we will know
that someone was asleep at the wheel. </p>

<p>According to an HKEx <a href="http://www.hkex.com.hk/research/reideas/cmts01_e.pdf" target="_blank">survey</a>,
the UK represents the largest source of overseas orders in the HK market at 33%
in 2000/01. So in particular, we hope that UK institutions, many of whom are
members of the ABI and NAPF, will apply the same principles abroad as they do at
home, and support project Vampire by voting against the general mandate, until
such time as HK companies meet the UK standards. </p>

<h3>Objective</h3>

<p>We do not expect that Project Vampire will actually overturn the general
mandate, because most companies have a controlling shareholder who will push it
through. That is not the point. Coupled with Project Poll, we will consider it a
success if we register substantial opposition to the mandate, excluding votes
cast by the controlling shareholders. By pressure of investor votes, in the long
run, we hope that HK regulators will tighten the Listing Rules which currently
permit such mandates. </p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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