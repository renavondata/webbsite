
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

<script type="text/javascript">document.title="The Independent Panda";</script>

	<div class="summary">Following our scoop that Vincent Lo's Shui On Group had an undisclosed interest in Panda-Recruit, the company put out an announcement which defined "independent" in a piece of legal dissection not seen since Bill Clinton's definition of "is". This affair highlights a much wider loophole in the Stock Exchange's definition of connected parties, as we explain.</div>

<h2 class="center">The Independent Panda<br>
<span class="headlinedate">11 August 2000</span></h2>
<p>In our exclusive <a href="savethepanda.asp">article</a> on
19-Jul-00, we disclosed that Shui On Group, run by Vincent Lo Hong Sui (<b>Vincent
Lo</b>), had a 22.22% stake in a company called Century Faith Investments Ltd (<b>Century
Faith</b>), which in turn owns 23.54% of Panda-Recruit Ltd (<b>Panda Recruit</b>)
after its recent IPO. Shui On Group's stake was held through a wholly-owned
subsidiary called Salespost Ltd (<b>Salespost</b>). </p>

<p>Vincent Lo is a director of both Century Faith and
Panda-Recruit. He is a brother of Lo Ka Shui, who is Chairman of Panda-Recruit,
Chairman of the GEM Listing Committee and a director of Century Faith. 66.67% of
Century Faith is owned by Great Eagle Holdings Ltd, founded and chaired by their
father. </p>

<p>While the prospectus disclosed Great Eagle's interest, the
document claimed (p138): </p>

<blockquote>

<p>&quot;the remaining 33.33% [is] held by independent third
parties&quot; </p>

</blockquote>

<p>The prospectus also states that Lo Ka Shui represents Century
Faith on the board of Panda-Recruit, and (p139): </p>

<blockquote>

<p>&quot;Apart from the representative nominated, the Directors [of
Panda-Recruit] and their respective associates as defined in the GEM listing
rules are independent from Century Faith&quot;. </p>

</blockquote>

<h3>The Meaning of Independent</h3>

<p>In response to our article and the ensuing press coverage,
Panda-Recruit put out an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20000723/00000MC20000723182209H.pdf">announcement</a>
(PDF format) on 23-Jul-00 addressing the two statements we
highlighted. The announcement states that: </p>

<blockquote>

<p>&quot;the Company's legal adviser has reconfirmed to the Company
that the statements were not misleading&quot; </p>

</blockquote>

<p>Well that's a relief! By the way, the legal advisers to the
company on the IPO were Messrs <a href="http://www.sfks.com.hk/" target="_blank">Sit,
Fung, Kwong &amp; Shum</a>. Senior Partner <a href="http://www.sfks.com.hk/English/members/peter.htm" target="_blank">Peter
Sit Kien Ping</a> is a non-executive director of Panda-Recruit. He is also an
independent non-executive director of Chinese Estates Holdings Ltd, The Kwong
Sang Hong International Ltd and Asia Commercial Holdings Ltd. </p>

<p>In relation to the first statement, that the remaining 33.33% of
Century Faith is held by independent third
parties, the legal adviser confirmed that the statement was &quot;legally
correct&quot; because: </p>

<blockquote>

<p>&quot;the ultimate owner of [Salespost] is a discretionary trust
managed by the third party Trustee who is legally independent from [Vincent Lo]
notwithstanding the fact that the Trustee, under the GEM Listing Rules, is an
associate of [Vincent Lo]&quot;. </p>

</blockquote>

<p>The trustee may be legally independent, but the reasonable
reader would assume that &quot;independent&quot; did not include persons who are
associates of directors under the Listing Rules, since such persons are also
&quot;connected parties&quot; under the Listing Rules. </p>

<p>What this means is that the Stock Exchange and all of us, from now on, should
be extra suspicious of any unqualified claim by a listed company that a person
is an &quot;independent third party&quot;. Unless there is an additional
statement that the person is not a connected party (which includes directors and
their associates) then the statement is worthless. </p>

<h3>What's a Trust?</h3>

<p>For those who don't have billions to protect from estate duty
(or death tax) we should explain that a discretionary trust is a legal method
which the rich use to avoid death tax on their HK assets. </p>

<p>The person with the assets (known as the &quot;settlor&quot;)
establishes a trust by appointing a trustee under the terms of a trust deed, and
nominating his family as beneficiaries. He then passes all his assets to the
Trustee, and can die penniless in the eyes of the HK tax man, provide he lives
for 3 more years. (Note: if you are a tycoon reading this, get your own tax
advice - we are not responsible). </p>

<p>The trustee in theory acts independently of the settlor and
controls the assets, but in practice most trustees will follow the wishes of the
settlor, since their business and reputation depends on it. You won't find them
voting against the settlor's wishes in shareholders' meetings! </p>

<p>Leading trustees of Hong Kong's tycoons include subsidiaries of
Bank of Bermuda, HSBC, Citibank and Barclays. It's a huge but seldom-mentioned
industry. There is an <a href="http://www.itca.net/" target="_blank">International
Trust Companies Association</a> and there is even a <a href="http://www.hktrustees-assoc.com/" target="_blank">Hong
Kong Trustees Association</a>. </p>

<p>If you took the legal advice offered to Panda-Recruit, then you
would believe that the controlling shareholder of Sun Hung Kai Properties is
&quot;independent&quot; of the Kwok brothers, and so on. </p>

<p>Some tycoons prefer not to trust banks and instead set up
complicated unit trust arrangements whereby the trustee of the unit trust owns
the shares, and the units are held by another trust, and both trustees are owned
by the tycoon, and so on. We are in for a few entertaining court cases when
these arrangements get tested by the Inland Revenue as the current generation of
tycoons passes on. </p>

<h3>The Meaning of Associate</h3>

<p>The second statement in the prospectus (p139) was more explicit: </p>

<blockquote>

<p>&quot;Apart from the representative nominated, the Directors [of
Panda-Recruit] and their respective associates as defined in the GEM listing
rules are independent from Century Faith&quot;. </p>

</blockquote>

<p>Now &quot;respective associates&quot; includes the Trustee, and
Panda-Recruit's response accepted this, but then dodged around the point by
saying: </p>

<blockquote>

<p>&quot;The Trustee is independent of Century Faith
notwithstanding its passive indirect minority interest in Century Faith&quot;. </p>

</blockquote>

<p>Of course, one might regard the Trustee as passive - it is
unlikely to go around telling Vincent Lo how to run the Shui On Group, even if
technically the Trustee owns and controls it. But it is a bit of a stretch to
call a 22.2% beneficial shareholder of Century Faith &quot;independent&quot;. </p>

<h3>The Associates Loophole</h3>

<p>OK, now <a href="../sounds/drumroll.wav">wake up</a> and pay
attention at the Stock Exchange - we will show you a loophole big enough to pass
a camel through. </p>

<p>Notice that the response from Panda-Recruit did not discuss
whether Salespost and Shui On Group are &quot;associates&quot; of Vincent Lo
under the GEM Listing Rules, and hence did not discuss whether they are
&quot;independent&quot; of Century Faith. </p>

<p>In fact, this spotlights a loophole which may well have been
exploited by other listed companies in the past. </p>

<p>An &quot;associate&quot; as defined in Rule 1.01 in relation to
any director, chief executive, substantial shareholder or management shareholder
(being an individual) includes: </p>

<blockquote>

<p>&quot;(a)(ii)&nbsp;&nbsp;&nbsp; the trustees, acting in their
capacity as such trustees, of any trust which he or any of his family interests
is a beneficiary or, in the case of a discretionary trust, is a discretionary
object&quot; </p>

</blockquote>

<p>Unfortunately, the definition stops there. It does not go on to
include any company which is controlled by such a trustee. So strictly speaking
(and clearly, that is how lawyers work), Salespost and Shui On Group are not
associates of Vincent Lo, even though the Trustee is. That makes the inclusion
of trustees in the definition of &quot;associates&quot; almost useless. </p>

<p>It makes us wonder how many transactions by listed companies are
done with companies controlled by trustees of trusts set up by the directors.
Such transactions could fall into two categories - those which are not
disclosed, and those which are disclosed but the parties are claimed to be
&quot;independent&quot; and &quot;not connected&quot; as they pass through the
loophole. </p>

<p>In the case of Panda-Recruit, the failure to disclose Shui On
Group's interest in the company was not disastrous, but in other cases, it could
seriously damage your wealth. </p>

<h3>The incredible shrinking Panda</h3>

<p>In case you were wondering, the Panda-Recruit share price is
now $0.173, down 38% from its $0.28 IPO price since the 20-Jul-00 debut. </p>

<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10902">Allegro Culture Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=698">Lo, Vincent Hong Sui</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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