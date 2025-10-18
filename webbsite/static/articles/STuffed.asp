
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

<script type="text/javascript">document.title="STuffed!";</script>

	<div class="summary">In Jan-02, we criticised South China Holdings for its unlisted dividends in specie, and warned that the logical extreme was to distribute the bulk of the assets as an unlisted company. The rules remain unchanged, and Sing Tao Holdings has now done exactly that, distributing the bulk of its assets in an unlisted company for which parent Global China made a take-it-or-leave it offer. Some choice.</div>

<h2 class="center">STuffed!<br>
<span class="headlinedate">25 September 2002</span></h2>
<p>Sometimes <i>Webb-site.com </i>can read
like a &quot;how-to&quot; guide on the abuse your minority shareholders. It is
unavoidable - by documenting regulatory loopholes, if they are not subsequently
closed, then they may be exploited. </p>

<h3>First a small one...</h3>

<p>In Jan-02, we <a href="deaddiv.asp" target="_blank">criticised</a>
South China Holdings Ltd for spewing out unlisted shares in its subsidiaries as
dividends in specie, in effect a form of creeping delisting. This avoided the <a href="http://www.hkex.com.hk/rulereg/listrules/PN15.doc" target="_blank">rules</a>
on spin-offs, but with no guarantee that the distributed shares would ever be
delisted. So far, in the case we highlighted, Jinchang Pharmaceuticals Holdings
Ltd has yet to be listed anywhere and shareholders are left holding unlisted
stock in a company which is not subject to the Listing Rules. </p>

<h3>...then a big one</h3>

<p>Now roll the clock forward to
11-Jul-02, and we find an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020712/LTN20020712035.pdf" target="_blank">announcement</a>
by Sing Tao Holdings Ltd (<b>STH,</b> subsequently renamed Shanghai Ming Yuan
Holdings Ltd) that it would distribute all the issued shares of Sing Tao Media
Ltd (<b>STM</b>) to its shareholders as a &quot;special interim dividend in
specie&quot;, 1 unlisted share in STM for every STH share held. </p>

<p>STM owns the newspapers and magazine
business of STH, including the English-language <i><a href="http://www.thestandard.com.hk/" target="_blank">Standard&nbsp;</a></i>
and the eponymous Chinese <a href="http://www.singtao.com/" target="_blank">Sing
Tao</a> daily. The distribution reduced STH to a small property-owning group. </p>

<p>Although an interim dividend itself
would normally require only a board resolution, this one was so large that it
needed a reduction of the share premium account to create enough distributable
reserves before the dividend could be paid, which required a special resolution
of shareholders, in turn requiring a 75% majority of votes cast. </p>

<p><a href="../dbpub/articles.asp?p=4943" target="_blank">Global
China Group Holdings Ltd</a> (<b>GC)</b> owned 74.5% of STH, so it was certain of approving the
capital reduction proposal. At the same time as the dividend announcement, GC <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020712/LTN20020712045.pdf" target="_blank">announced</a>
that it would sell its 74.5% stake in the shrunken shell of STH to a BVI company
owned by Mr Yao Yuan and his brother at $0.524 per share, triggering a general offer for STH. </p>

<p>GC also <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020712/LTN20020712055.pdf" target="_blank">announced</a>
a voluntary general offer under the takeover code for the 25.5% of STM it didn't
already own, offering 1.75 new CG shares for each unlisted STM share.&nbsp; </p>

<p>The accountants got to work, and by an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020729/LTN20020729046.pdf" target="_blank">announcement</a>
on 26-Jul-02 had figured out that the dividend would reduce the net assets of
STH as of 31-Dec-01 from HK$755.0m to $104.9m, or from $1.80 to $0.25 per
share. In other words, the dividend of STM shares represented <b>86.1%</b> of
the net assets of STH. </p>

<p>The 27-Jul-02 <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020729/LTN20020729153.pdf" target="_blank">circular</a>
convening the shareholders meeting regarding the dividend offered very little
information on STM, but in any case, the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020819/LTN20020819120.pdf" target="_blank">outcome</a>
of the meeting on 19-Aug-02 was in no doubt with GC's 74.5% vote. Minority
shareholders of STH were about to receive unlisted shares in respect of 86.1% of the
net assets of their company, and they had no choice in the matter. </p>

<h3>The Offer for STM </h3>

<p>Although STM, after being distributed,
was no longer subject to the HKEx Listing Rules, the offer by GC for STM was
still subject to the SFC's Takeover Code, because STM was a &quot;public
company&quot; under paragraph 4.2 of the
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Introduction</a>
to the Code. </p>

<p>The board of the unlisted STM was the same as the
board of STH, so the independent non-executive directors were Mr Stephen
Fan Sheung Tak, an accountant, Mr Tung Chee Chen, Chairman of shipping group
Orient Overseas International Ltd and brother of Hong Kong's Chief Executive, and
Mr Yao Kang, a retired director of various Swire companies. </p>

<p>On 27-Aug-02, the latest practicable
date prior to the posting of the offer document, GC shares closed at $0.33. This
valued the 1.75 GC shares offered for each ST share at <b>$0.5775</b>. However,
in the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020902/LTN20020902060.pdf" target="_blank">offer
document</a>, GC chose to focus on the fact that on 11-Jul-02 it had arranged a placing of new
shares to 3 companies, owned by anonymous &quot;independent third parties&quot;
at $0.6388 per share (nice lucky number). The offer document stated that the
offer valued the STM shares at $1.12 on that basis. We find the comparison
misleading, because the placing price has no bearing on the market price
achievable for accepting STM shareholders. </p>

<p>In addition, the pro forma net asset
value of STM at 31-Dec-01 was <b>HK$1.535</b>, so the offer value of $0.5775 was
a <b>62.4% discount</b> to the net asset value. </p>

<h3>Fait accompli </h3>

<p>Whatever you think of those offer
terms, the key point is that investors should not be forced to choose between a
privatisation offer and holding unlisted stock. That is not a real choice, and
allows the offeror to name its price. By using
its control of STH to distribute STM as an unlisted dividend, GC left investors
with a <i>fait accompli</i>. The independent directors correctly wrote: </p>

<blockquote>
  <p>&quot;STM Independent Shareholders who continue to be
  interested in the future prospects of [STM] and consider retaining their
  shareholdings in [STM] may hold an illiquid investment
  for which no recognized market will exist. In addition, under this
  circumstance, shareholders of [STM] will become
  investors in a private company with less transparency,
  more limited financial reporting requirements and with fewer opportunities to vote on significant acquisitions or realizations of significant
  assets, than would be the case for a publicly traded
  company listed on the Stock Exchange.</p>
</blockquote>

<p>It is a pity that the independent directors didn't voice any
public objection when the STH board declared the dividend in the first place. The combined effect of the dividend and
the offer was that GC acquired 100% of STM from STH by issuing new shares with a
market value equal to a 62.4% discount to STM's net asset value. They could have
proposed that as a connected transaction, which would have required approval by
independent shareholders of STH, but instead avoided that by using the dividend route. </p>

<p>So cynical was this approach that STH didn't even bother to send
out share certificates in respect of the dividend, instead saying that anyone
who didn't accept the offer by GC would get STM share certificates after the
offer completed. Needless to say, STM shareholders caved, and when the offer <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020920/LTN20020920083.PDF" target="_blank">closed</a>,
GC had received enough acceptances to compulsorily acquire the remaining shares,
making STM a 100% subsidiary. </p>

<h3>Regulatory Note </h3>

<p>Mr Andrew Sheng, Chairman of the SFC,
said in a recent speech, </p>

<blockquote>
  <p>&quot;At the controversial end of the spectrum of transactions are those
  that appear unfair but comply with the non-statutory rules. These should lead
  to rule changes&quot;</p>
</blockquote>

<p>This is a classic case in point. We said it <a href="deaddiv.asp">in
January</a> and we'll say it again: the
Listing Rules should be amended to prohibit listed companies from making
dividends in specie unless the distributed assets are themselves listed. </p>

<p>In addition, where the distributed
assets are listed on a different recognised stock exchange, then the
distribution should require independent shareholders' approval, because an
overseas listing may make it difficult for independent shareholders who don't
have overseas brokerage accounts to sell their distribution. </p>

<p>If the rules are not changed, then this
will not be the last time that a company spontaneously delists itself by
distributing the bulk of its assets as an unlisted company. Delisting, as we
have recently seen, destroys value by removing liquidity and regulatory
oversight. Meanwhile, the share prices of all listed companies will continue to
be discounted for the risk of this kind of action. </p>

<p>Think about it. How would you feel if a company whose shares you
own announced that its controlling shareholder had decided that the company will
distribute 90% of its assets as an unlisted stock, and you had no choice in the
matter but to accept whatever offer is on the table? </p>

<p>Special dividend in specie? These things should be renamed
&quot;<a href="http://www.dictionary.com/search?q=specious" target="_blank">specious</a>
dividends&quot;. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=543">Mingyuan Medicare Development Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4943">SING TAO NEWS CORPORATION LIMITED</a></li>
				
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