
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

<script type="text/javascript">document.title="Jardine's Back Door";</script>

	<div class="summary">Dissident shareholder Brandes at the Bermuda AGM of Jardine Matheson Holdings on 17-May-01 will again propose that JMH should privatise the minority interest in Jardine Strategic, cancelling out the cross-holding which perpetuates the Keswick family's apparently armour-plated control over the Group, despite their 7% holding in JMH. Webb-site.com analyses the legal strategy that Brandes may follow and finds a flaw in the Jardine armour.</div>

<h2 class="center">Jardine's Back Door<br>
<span class="headlinedate">16 May 2001</span></h2>
<p>During the mid-1980s, Jardines, one of Hong Kong's oldest
groups, developed a shareholding structure which allowed the Keswick
family (distant relatives of the co-founder, William Jardine) to control the
group while owning only a small percentage of the stock of <a href="http://www.jardines.com/" target="_blank">Jardine
Matheson Holdings Limited</a> (<b>JMH</b>). The full story of how that was
established is a case study in bad governance, but we won't waste time now on
the historic transaction details. Chairman Henry Keswick and his brother Simon,
also a director, are believed to be great-great-grandchildren of Margaret
Johnstone, a niece of William Jardine, who died childless. </p>

<p>Over the last few years, the cross-shareholding between JMH and
its subsidiary, Jardine Strategic Holdings Limited (<b>JSH</b>), has been
intensified to the stage where JMH now owns 74% of JSH which in turn (including
subsidiaries) owns 51% of JMH. Together Henry Keswick, Simon Keswick,
and the Managing Director (quaintly known as the taipan) Percy Weatherall (another relative) including their related trusts
and non-beneficial holdings, own just 7% of JMH, but their position on the
board, together with the cross-shareholding, makes it almost bid-proof. </p>

<p>Take a look at the table below: </p>

<img class="center" alt="" src="../images/jmhcra1.gif">

<p>The 1947 Trust was established (surprise) in 1947, many years
before JMH went public, and the trust's income may be
distributed to senior executives and employees of JMH. The trustees are
not known but we will assume that they would be allied with management when it
comes to a vote. Clare Investment &amp; Trustee Ltd (<b>CLIT</b>) is a wholly-owned subsidiary
of JMH which holds shares in its parent and issues share options over those shares to
employees. Although these shares are effectively unissued, there is probably nothing in Bermuda law to stop
CLIT voting the stock in its parent, so
again we assume it is allied. That takes the total voting weight to <b>14.7%</b>,
which is less than the combined <b>15.9%</b> of&nbsp; <a href="http://www.brandes.com/" target="_blank">Brandes
Investment Partners L.P.</a> (<b>Brandes</b>) and Cheung Kong/Hutchison Whampoa
Ltd, which are controlled by Li Ka-shing. So as you can see, the 51% stake owned
by JSH is essential to the outcome of any vote. </p>

<h3>Brandes' Proposals</h3>

<p>Brandes, a US-based institutional investor, is fighting a noble
battle to
realise value and unwind the cross-holding by getting JMH to privatise JSH,
buying in the 26% it doesn't already own. That would expose JMH to a market
discipline it has not seen, and open the group to potential takeover,
particularly if they do not perform. JSH controls <a href="http://www.hongkongland.com/" target="_blank">Hongkong
Land</a>, which owns much of the central business district, hotel chain <a href="http://www.mandarinoriental.com/" target="_blank">Mandarin
Oriental</a>, and supermarket group <a href="http://www.dairyfarmgroup.com/" target="_blank">Dairy
Farm</a>, as well as a 26% stake in <a href="http://www.cyclecarriage.com/" target="_blank">Cycle
&amp; Carriage</a>. </p>

<p>Last year, Brandes proposed a number of resolutions to improve
corporate governance of the group in annual general meetings of both JMH and JSH.
They also sought to remove the cross-shareholding by privatising JSH. The <a href="../codocs/JMHagm2000s.pdf" target="_blank">resolution</a>
 that they proposed at the 1-Jun-00 AGM of JMH reads as follows: </p>

<blockquote>

<p>&quot;That the Members do hereby instruct and require the
Directors to consider whether it would be in the interests of all Members to
acquire all shares of [JSH] not presently owned by the Company. In such
deliberations, the Directors are not to take into account whether or not such
action, if consummated, would or would not make it easier for a potential bidder
to obtain control of the company.&quot; </p>

</blockquote>

<p>That resolution was proposed as an <b>ordinary</b> resolution,
requiring a 50% majority, and was defeated. This year, the <a href="../codocs/JMHagm2001s.pdf" target="_blank">resolution</a>
 proposed by Brandes for the AGM on 17-May-01 is more direct: </p>

<blockquote>

<p>&quot;That, pursuant to Bye-law 105 of the Company's bye-laws,
the following regulation be and is hereby made: </p>

<p>That the Company shall, as soon as reasonably practicable after
the passing of this resolution but not later than September 30 2001, make a
proposal to privatise [JSH] pursuant to a cash offer, scheme of arrangement,
amalgamation or otherwise...&quot; </p>

</blockquote>

<p>This time, the resolution is proposed as a <b>special </b>resolution
to create a regulation under the bye-laws. A special resolution requires a 75%
majority of those shares voted. Unlike an ordinary resolution which is normally
only used to approve a course of action proposed by a board of directors, a
special resolution is normally binding on the board, since it is the same
majority that is needed to amend the bye-laws, which are binding. Hence Brandes'
tougher strategy this year, putting forward a firm proposal to privatise the
company, is one with which, if passed, the board would be bound to comply. </p>

<p>Now you might think, if Brandes failed to win a 50% majority
(due to the cross-holding being voted against it) then why on earth would they
try for the 75% majority needed for a special resolution? </p>

<h3>The Flaw in Jardine's Armour</h3>

<p>When the Jardine group delisted itself from Hong Kong in 1993/4,
it established a separate takeover code in Bermuda (one for each company in the
group). The codes were almost identical to each other, and adopted most of the
provisions of the UK Takeover Code at the time. Each code takes the form of an
Act of Law together with a set of Regulations made pursuant to that law. The
&quot;General Principles&quot; of the UK Takeover Code (the fundamental
principles) are reflected in the
corresponding law in Bermuda. </p>

<p>Section 12 of the Jardine Strategic Holdings Limited Amendment
Act 1993 (which tracks <a href="http://www.thetakeoverpanel.org.uk/code/codeprinciples.asp" target="_blank">General
Principle 7</a> of the UK Code) reads: </p>

<blockquote>

<p>&quot;FRUSTRATION OF OFFERS </p>

<p>Save as may be provided in the Regulations, once an intention to
make a bona fide offer has been announced or communicated to the Board or <b>the
Board has reason to believe that a bona fide offer might be imminent, no action
may be taken by the board </b>in relation to the affairs of the Company...
without the approval of shareholders in general meeting, if such action would be
likely to result in such offer being frustrated or in shareholders being denied
the opportunity to decide whether or not to accept such offer on its
merits.&quot; (emphasis added) </p>

</blockquote>

<p>The Act defines an <b>offer</b> as: </p>

<blockquote>

<p>&nbsp;&quot;a general offer, partial offer or tender offer and
includes a proposed or <b>possible offer</b>&quot; (emphasis added) </p>

</blockquote>

<p>Now let's think about this. Sitting on the table is a JMH
resolution proposed by Brandes, on which JSH (as a shareholder of JMH) is being
asked to vote. But the resolution is to make an offer for JSH. If the resolution
is passed, then there <u> will</u> be an offer for JSH. No ifs, no buts, the
offer will happen. The only pre-condition to that
offer is the resolution. So there is clearly a <i>&quot;possible offer&quot;</i>
on the table. So it seems clear that <i>&quot;a bona fide offer might be
imminent&quot;.</i> </p>

<p>Secondly, if the board of JSH causes JSH (or its subsidiaries) to vote
against the resolution, then since they own more than 25% of JMH, their vote
would be certain (not just &quot;likely&quot;) to result in the resolution
failing and the offer being frustrated, and
JSH shareholders would be denied the opportunity to decide whether or not to
accept such offer on its merits - the offer simply would not proceed. That would
seem to be &quot;Frustrating Action&quot; and a breach of the law. It would then
follow that JSH should be restrained from breaching the law by voting its stake
in JMH on the resolution. </p>

<p>So that, we conclude, is the flaw in Jardine's armour. Rather
like the impenetrable Death Star in <i>Star Wars</i>, Brandes is looking for the
<a href="http://www.starwars.com/databank/technology/protontorpedo/index.html" target="_blank">thermal
exhaust portal </a>down which to drop the proton torpedo, and we think that
portal is the Frustrating Action strategy. </p>

<h3>Next Step</h3>

<p>If we are right, and Brandes pursues this strategy, then the
next stage would be for Brandes to seek a ruling from the <a href="http://www.bma.bm/" target="_blank">Bermuda
Monetary Authority</a> (<b>BMA</b>) (which is given the role of regulator of the
takeover code) that the votes of JSH in JMH on the privatisation resolution
should be disregarded, on the grounds that the conduct of the JSH board amounts
to Frustrating Action in breach of the law. Whether or not the ruling was
granted, the loser would probably seek a judicial review, sending the matter to
the courts of Bermuda, to the Caribbean appeal court and ultimately to the Privy
Council in London, which is the court of final appeal in the Bermuda legal
system. It would be a long fight. </p>

<p>If Brandes succeeds in preventing JSH from voting, then the
privatisation of JSH comes down to a straight fight between the Keswicks (with
7.0%) and their allied interests (with 7.7%), Brandes (11.1%) Cheung
Kong/Hutchison (with 4.8%) and the public (18.1%). That all adds up to the <b>48.7%</b>
which JSH does not own. </p>

<p>Now the problem is that to win the special resolution, Brandes
would have to get at least 3 times as many votes in favour as are voted against.
But the Allies hold <b>14.7%</b>, more than a quarter of the votes not held by
JSH. So the attack is only possible if the Allies are split, since otherwise
their vote against the resolution would be insurmountable. In essence, Brandes
needs to persuade the trustees of the 1947 Trust (having regard to their
fiduciary duties, about which they may be reminded) to vote in favour of the
resolution or at least abstain, reducing the &quot;no&quot; vote to 9.0%.
Brandes would then need 27% out of the remaining 34%. </p>

<p>Brandes might also argue that since CLIT is a wholly-owned
subsidiary of JMH, the BMA should bar it from voting in meetings of JMH, because
on a consolidated basis, the shares it holds are unissued. That would reduce the
&quot;no&quot; vote to 7.0%, so Brandes would need 21% out of the remaining 34%. </p>

<p>A few years ago, when JSH held only around 35% of JMH, Brandes
would have had a better chance of passing this resolution (assuming our
Frustrating Action strategy worked), but now it may be too late; the outstanding
votes are heavily stacked against it. Nevertheless, we wish them luck. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=646">JARDINE MATHESON HOLDINGS LIMITED</a></li>
				
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