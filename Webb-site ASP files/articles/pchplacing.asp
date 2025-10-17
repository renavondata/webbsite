
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

<script type="text/javascript">document.title="The Dilution Solution";</script>

	<div class="summary">In the ongoing Pacific Challenge story, the board has made its next move after their cash acquisition of Cents.com was blocked by independent shareholders. Now they are trying to issue shares to "independent third parties" to raise cash for which there is no present need. Kistefos, a Norwegian 26% independent shareholder, spoke exclusively to <i>Webb-site.com</i></div>

<h2 class="center">The Dilution Solution<br>
<span class="headlinedate">1 August 2000</span></h2>
<p>You didn't think the story was finished, did you? We explained in a
<a href="centsibility.asp" target="_blank"> previous article</a> how independent shareholders
of Pacific Challenge Holdings Ltd (<b>PCH</b>) had
rejected a proposal by its largest shareholder, <a href="http://www.e1.com.hk/" target="_blank"> E1 Media Technology Ltd</a> (<b>E1 Media</b>), to extract HK$170m of cash from PCH in return for a
highly-valued
Cents.com Ltd (which doesn't even own <a href="http://www.cents.com/" target="_blank">that
domain</a>). E1 Media had spent over $189m to buy 30% of PCH back in February. </p>

<p>E1 Media is an internet start-up incubator founded by Dr Lily Chiang (<b>Dr
Chiang</b>), who is also an executive director and daughter of the founder of
HK-listed injection moulding machinery maker Chen Hsong Holdings Ltd (<b>Chen
Hsong</b>).&nbsp; </p>

<p>E1 Media was prohibited from voting on the Cents.com proposal as
it was a connected party to the transaction. Voters against the proposal
included the second-largest shareholder, Kistefos Investment A.S. (<b>Kistefos</b>),
which owns 62.4m shares, or 26.12% of PCH. </p>

<p>We now know that privately-held Kistefos is 85% owned by Mr Christen Sveaas, one
of Norway's richest investors. Kistefos was one of the founding investors of
Pacific Challenge back in 1994. </p>

<h3>The Dilution Solution</h3>

<p>After the rejection of the Cents.com acquisition, what happened next was predictable. On 27-Jul-00, the board of
PCH (which consists of 3 representatives of E1 Media and two independent
non-executive directors) <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000728/LTN20000728034.doc" target="_blank">decided</a> 
(Word format) that now would be a good time to do a placing of new shares with
&quot;independent third parties&quot;. Under the standard general mandate which
PCH, like most HK-listed companies, obtained at their latest annual general
meeting, the directors had discretion to issue shares equal to 20% of
the existing issued shares, the maximum permitted by the Stock Exchange rules. </p>

<p>PCH proposes to issue a total 47.6m shares (equivalent to 19.93%
of the issued share capital) at $0.67 per share. That compares with the $2.79
per share which E1 Media agreed to pay for their stake back in Feb-00. </p>

<h3>What funding need?</h3>

<p>You might wonder why PCH needs the money. After all, they still
have at least $170m of cash on hand ($0.71 per share) which they had planned to spend on Cents.com
Ltd. </p>

<p>They were also due to receive $29.3m for the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000330/LTN20000330046.HTM" target="_blank">28-Mar-00
sale</a> of the group's brokerage companies to a mysterious &quot;independent
third party&quot; called Steppington Holdings Ltd. There has been no word on
whether that deal was completed or who owns Steppington, which is not registered
in HK. </p>

<p>So why do they want a relatively small $31m from this placing? The usual
bland reasons are given: </p>

<blockquote>
  <p>&quot;to enhance the capital base of the Company as well as to
strengthen the cashflow of the Company... the Company has no present intention
  on the specific use of funds and as such, the net proceeds raised will be used
  as general working capital of the Company&quot;. </p>

</blockquote>

<p>In other words, they don't need the money. You might also wonder why E1 Media is willing to be diluted at
$0.67 per share when it paid $2.79 per share back in February. Even the net
asset value of the company is around $0.93 per share (including the unaudited
results to 31-Mar-00) and most of that is cash. </p>

<h3>The New Investors</h3>

<p>The placing is in two equal slices. Half is through a registered
dealer called Get Nice Investment Ltd, to a person called Mr. Cham Wai Ho (<b>Mr
Cham</b>). The announcement describes him as <i>&quot;an independent
professional investor&quot;</i>. </p>

<p>Our database tells us that a person called Anthony Cham Wai Ho
was until 14-Jun-00 an Independent Non-Executive Director of Star Cyberpower Holdings Ltd,
formerly
known as Chung Hwa Development Holdings Ltd. </p>

<p>On a whim, we picked up the phone and called Get Nice, and asked to speak to Anthony Cham. It turns out that he is the
Managing Director of sister company Get Nice Futures Company Limited. We asked
him what he thought about the now-scrapped Cents.com acquisition, but he said he
didn't know anything about it. Mr Cham clearly has confidence in the current
management of PCH. </p>

<p>The second placee is Dr Pau Kwok
Ping (<b>Dr Pau</b>), and he is described as &quot;<i>a director of a company
listed in Hong Kong</i>&quot;. Now which company could that be? Want to take a
wild guess? </p>

<p>We'll tell you what PCH preferred not to mention. Dr Pau is an
Executive Director of Chen Hsong Holdings Ltd, the company founded and still run
by Dr Chiang's father. Dr Pau is 46 years old and has been with the group man
and boy, since 1968 when he would have been only 14. </p>

<p>Dr Chiang is also an Executive Director of Chen Hsong, and
both she and Dr Pau are directors of Chen Hsong Investments Ltd, which owns 67.35% of Chen
Hsong. That company is in turn 84.42% owned by the trustee of the Chiangs'
Family Foundation and the Chiangs' Industrial Foundation. Dr Pau owns 4.9% of
Chen Song Investment. Dr Chiang owns 60% of E1 Media. </p>

<h3>Concerts?</h3>

<p>As a result of the placing, Kistefos would be diluted to <b>21.78%</b>,
while E1 Media would have 25.07% and the two new investors would have a total of
16.62%.
So E1 Media and the new investors will have a combined total of <b>41.68%</b> of
the company, should they choose to vote together on specific future proposals. </p>

<p>We are not, of course, suggesting that any of the named parties are acting in concert. That is for
the SFC to determine and not us. The SFC declined to comment on the case. </p>

<h3>Kistefos</h3>

<p>Speaking exclusively to <i>Webb-site.com, </i>Mr Erling Thiis, the Managing
Director of Kistefos Investment A.S., said: </p>

<blockquote>

<p>&quot;We think the placing is very curious as there are no
indications that the company needs any additional working capital. Furthermore we are surprised that the placing takes place at the point in time
where the share price does not in any way reflect the real underlying value of
the company. That, in our opinion, gives serious grounds for questioning the judgment
of the board of directors.&quot; </p>

</blockquote>

<p>We understand that Kistefos has instructed lawyers to object to
the transaction with both the Stock Exchange and the SFC. You will not be
surprised to learn that there is no formal process for objecting to a listing
application - you just have to find someone at the Exchange who is willing to
listen, and do it fast, since approvals of issues such as this are delegated by
the Listing Committee to the Listing Division. </p>

<h3>Loopholes are there to be exploited</h3>

<p>We've talked about the problems with the general placing mandate
in a <a href="placing.asp" target="_blank">previous article</a>. </p>

<p>This case highlights again the way in which the
placing mandate is open to abuse. If PCH wished to issue new shares for cash then it
should have done so by way of a rights issue. That is what is known as
&quot;pre-emptive rights&quot; and it prevents dilution of existing shareholders
without their consent. So long as the Stock Exchange refuses to bring
itself up to international standards on pre-emptive rights, investors will
suffer dilution through placings such as this. </p>

<p> This is not Singapore, where the limit is 20% per
year. This is not London, where institutional investors require a limit of 5% in
1 year and 7.5% in a three-year period. This is Hong Kong, where anything goes. </p>

<p>After each general mandate, the rules allow you to get another
one, and then another. Yes, you can have as many mandates as you like in one year. Controlling
shareholders can approve a new mandate in a general meeting every time their
board exhausts the old one. </p>

<h3>What Next?</h3>

<p>After the 20% placing general mandate has been exhausted (assuming that the Stock Exchange either doesn't wake up or can't smell any
coffee), one of the first things that PCH is likely to do is to seek a new
mandate. </p>

<p>Next, we predict that a new acquisition will be identified, and
the consideration will be in cash.&nbsp; </p>

<p>The board might also turn their eyes to the share option scheme
- don't you think the board should be incentivised with a raft of new share
options? PCH has never granted any options under its existing scheme, so up to 10% of the
company could be issued as options to the management, subject to a maximum of
2.5% per individual, and at a strike price of not less than 80% of market price. </p>

<p>Watch this space!&nbsp; </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14367">GET NICE SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7078">New Times Corporation Limited (BM)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10623">Cham, Anthony Wai Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6148">Chiang, Lily Lai Lei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6147">Pau, Kwok Ping</a></li>
				
		</ul>
	
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