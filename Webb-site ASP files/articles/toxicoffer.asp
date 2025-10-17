
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

<script type="text/javascript">document.title="Toxic Offer";</script>

	<div class="summary">Great Wall Cybertech has kicked off the bad governance year with a proposed toxic "open offer" of 4 new shares for every existing share held, at an 85% discount to market. Either you take it up or get massively diluted. In response to this, the share price crashed 41% today. We first criticised this style of offering in 1999 and the Stock Exchange has yet to close the loophole. We tell independent shareholders how to STOP this deal.</div>

<h2 class="center">Toxic Offer<br>
<span class="headlinedate">2 January 2002</span></h2>
<p>Oh dear, if today is anything to go by, it looks like 2002 will
be just as bad as 2001 for minority shareholders. <a href="http://www.great-wall.com.hk" target="_blank">Great
Wall Cybertech Ltd</a> (<b>GWC</b>), whose key products appear to be TVs and
losses, has staked its claim to the first bad governance event of the new year,
on the first trading day, by <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020102/LTN20020102024.doc" target="_blank">announcing</a>
a proposed open offer to existing shareholders of 4 new shares for every
existing share. The new shares are offered at <b>$0.01</b> each, an <b>85%
discount</b> to the previous market price of <b>$0.066</b>. The shares crashed
41% to $0.039 in response. Better rename it Great Fall Cyberwreck. </p>

<p>We wrote a detailed <a href="openripoffers.asp" target="_blank">article</a>
in 1999 which explains what an open offer is and why they should be banned,
unless the discount is minimal (10% or less). The points in that article, which
compares open offers with the fairer &quot;rights issue&quot; method, are just
as valid today as they ever were, and we won't repeat the detail here. </p>

<p>In an open offer, shareholders can either do nothing, or take up
their entitlements. They cannot sell those entitlements like they can in a
rights issue. Therefore, if the offer is at a large discount to the market
price, part of the value of their shares in effect has been transferred to those
entitlements, which are then worthless unless they are taken up. </p>

<p>Take GWC's offer as an example: shares were trading at $0.066,
but 4 new shares are offered at $0.01 each. Therefore the average theoretical
&quot;ex-entitlement&quot; (TEEP) price of 5 shares is $0.0212 per share. That
makes the entitlements worth $0.0112 per new share (the difference between the
subscription price and the market price), or $0.0448 per old share. That is the
value that is transferred to the entitlements. </p>

<p>So if a shareholder fails to take up his or her entitlement,
then he simply sees his existing shares drop to the TEEP price, a loss of
$0.0448, or <b>68%</b>, and his percentage shareholding is diluted by a factor
of 5. By comparison, in a rights issue, the shareholder can sell the
rights&nbsp; in the market, theoretically recovering the $0.0448 of value which
they would otherwise lose from the dilution. </p>

<p>Even worse, in this case, the net asset backing of the company
at 30-Sep-01 (believe it or not) was $0.75 per share. The issue price is at a
98.7% discount to that, so the net asset backing per share will drop by <b>79%</b>
from $0.75 to $0.158 per share. </p>

<h3>No excess entitlements</h3>

<p>Unlike some deep-discount open offers, which are bad enough, the
GWC offer is made worse by the fact that shareholders cannot apply to take up
more than their entitlements of the new shares, thereby absorbing the excess
created by those people who fail to take up their entitlements. There will
always be some shareholders who are uncontactable, or are foreign-registered, or
simply on holiday. They &quot;snooze and lose&quot; which is unfair, but this
reallocation of shares is a mechanism which at least means that underwriters
only get the stock if there is truly no demand for it amongst those shareholders
who hear about the offer. </p>

<p>But GWC has no such reallocation. Instead, the lucky
underwriter, First Securities (HK) Limited, gets all the excess entitlements at
just $0.01 each. We wonder what they will do with the shares. </p>

<h3>The controller</h3>

<p>The controlling shareholder, Vandor Profits Limited (<b>VPL</b>)
has 30.1% of the company (just above the takeover threshold) and will take up
their entitlements, maintaining their stake. Incidentally, the announcement
contains a circular definition which fails to spell out the name of VPL. It also
bizarrely warns that the company &quot;will not offer fractions&quot; of shares,
ignoring the fact that all entitlements will be whole numbers in a 4 for 1
issue! </p>

<p>At the last <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000713/LTN20000713011.doc" target="_blank">disclosure</a>,
on 12-Jul-00, VPL was 76.64% owned by Macross Profits Limited which in turn was
60% owned by Wu Shaozhang (<b>Mr Wu</b>), the Chairman of GWC, and 40% was
acquired by China Everbright Holdings Company Limited (<b>CEHC</b>), which is
owned by the PRC Government. That 40% stake came from Chen Weixiong (<b>Mr Chen</b>),
a director of GWC, who no longer has a holding. Although this represents an
effective sale of shares by a director, Mr Chen did not <a href="http://www.hkex.com.hk/listedco/sdi/20000712a.htm" target="_blank">disclose</a>
the price at which he sold his stake. </p>

<p>The accounts state that Mr Wu, CEHC and Mr Wong Kwok Wing (the
Vice Chairman of GWC) own all of VPL, which suggests that Mr Wong owns some or
all of the remaining 23.36%. </p>

<h3>STOP THE DEAL!</h3>

<p>The good news is, under Listing Rule 7.24(5), as the offer
involves an increase of more than 50% (in fact, 400%) in the share capital, it
must be conditional on approval by shareholders in general meeting, with any
controlling shareholder (that means VPL) abstaining from voting. So this is one
occasion on which <b>your vote can count</b>. </p>

<p>The bad news is that there is no requirement to conduct a poll
on such voting (counting each share as 1 vote) so investors must specifically
demand a poll to get one. So if you are a shareowner of GWC, we urge you to tell
your broker or custodian, to tell HKSCC Nominees Ltd to <b>vote AGAINST the
proposed open offer and demand a poll </b>on that resolution. The shareholder'
circular and notice of meeting has not yet been posted&nbsp; but the provisional
date of the meeting is <b>28-Jan-02</b>. </p>

<p>By voting against, you will send a clear message to GWC that
this behaviour cannot be tolerated. If they want to issue new shares, they
should make a normal rights issue and allow everyone the opportunity to either
take up or sell their rights. </p>

<h3>By the way</h3>

<p>That HK$64m they are trying to raise as working capital wouldn't
go far anyway. GWC's 50% owned associated company Qingyaun Rowa Electronics Co
Ltd (<b>QRE</b>) and its affiliates owe GWC, as of 30-Sep-01, $709m,&nbsp; the
bulk of which is trade receivables and more than 90 days overdue. In other
words, GWC has been supplying its associate and not getting paid that often. In
addition, GWC has been issuing guarantees over QRE's and other associates'
borrowing, totalling $298m utilised credit at 30-Sep-01. That adds up to a
billion dollars worth of potential trouble. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1442">EPI (Holdings) Limited</a></li>
				
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