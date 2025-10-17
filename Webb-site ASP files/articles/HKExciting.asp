
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

<script type="text/javascript">document.title="HKExciting!";</script>

	<div class="summary"><i>Webb-site.com</i> announces the candidacy of David Webb for directorship of HKEx, which is holding its first elections after almost 3 years of listing, or listlessness, depending on your view. Under its unique constitution, only 6 out of 13 directors can ever be elected. This may also be the first time a shareholder has nominated a director at the AGM of a HK-listed company. Please support us, and help make a more representative board at HKEx!</div>

<h2 class="center">HKExciting!<br>
<span class="headlinedate">17 March 2003</span></h2>
<p>In what may be a first for Hong Kong, a shareholder has nominated a candidate
for a directorship at the annual general meeting of a listed company. This is
unprecedented because in most companies, the board picks its own members at the
behest of the controlling shareholder.&nbsp; </p>

<p><i>Webb-site.com</i>
 announces the nomination of its editor David Webb to the board of Hong Kong Exchanges
and Clearing Limited (<b>HKEx</b>), at the AGM on 15-Apr-03. </p>

<p>Getting nominated is not as simple as it sounds. Article 90(2) of the <a href="http://www.hkex.com.hk/exchange/asso/0316news1-hkec-ma.doc" target="_blank">Articles
of Association</a> of HKEx states in part: </p>

<blockquote>

<p>&quot;No person (other than a Director retiring in accordance with these Articles) shall be appointed or re-appointed a Director at any general meeting...
unless:<br>
<br>
(a)	he is recommended by the Directors; or<br>
<br>
(b)	not less than seven nor more than twenty-eight clear days before the date appointed for the meeting there has been given to the Secretary, by a member (other than the person to be proposed) entitled to vote at the meeting, notice of his intention to propose a resolution for the appointment or reappointment of that person and a notice executed by that person of his willingness to be appointed or re-appointed...&quot; </p>

</blockquote>
<p>The bizarre rule in paragraph (b) means that although HKEx announced its
results and <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030312/LTN20030312078.pdf" target="_blank">published</a>
a notice of AGM on 12-Mar-03, our candidate had to wait until today to be
nominated, as there are 28 clear days between today and the date of the meeting.
If the nomination had been submitted any earlier, it would have been invalid.
This rule, which is commonly found in Articles of HK-listed companies, makes it
difficult for shareholders to nominate anyone and get them on to the ballot. </p>

<p>We are fortunate that HKEx has not yet sent out its proxy forms or annual
report, so there was time to get our candidate onto the ballot. The element of
surprise was vital in this respect - there would not be much point in running if
your candidacy was not on the proxy cards because they had been sent before the
21-day window. </p>

<p>We considered the alternative route of seeking a blessing from the Directors
under Article 90(2)(a), but this would have involved breaking cover and passing
through a 3-man nominating committee which included the Chairman of the GEM
Listing Committee (Lo Ka-shui) and a broker (Paul Fan Chor-ho) whose
constituency was opposed to the abolition of minimum commissions. We have been a
regular critic of both GEM and minimum commissions, so we opted for stealth.
Nevertheless, we do hope that some of the other directors will support our
candidacy.&nbsp; </p>

<p>The
nominating shareholder is <a href="http://www.fc.com" target="_blank">Fundamental
Consultants Limited</a> (FCL), and you can <a href="../codocs/HKExnom.pdf" target="_blank">click
here</a> to read the text of the nomination (minus our contact details),
including a brief biography. </p>

<p>FCL, along with David Webb and 3 other registered holders, will require a
poll at the AGM so that all votes get counted, one vote per share - a principle
which HKEx has not accepted in the past. For disclosure of interests, David Webb
is interested in 10 shares of HKEx, including shares held by his wife and
associated companies. </p>

<h3> A strange animal</h3>

<p> HKEx has a governance structure unique among HK listed companies. By law, no
single shareholder can own more than 5% of the company. It currently has 15
directors, 8 of whom are &quot;public interest directors&quot; appointed by the
Government, although the Government does not have any disclosed shareholding in
HKEx. Of the other seven, six were elected in 2000 before the company was
floated, and the other is the Chief Executive of HKEx, currently K C Kwong, who
is due to leave at the end of April. His replacement has not yet been announced. </p>

<p> The number of directors who can be directly elected is limited by Article
90(1) to six. In its listing document, HKEx states that the total number of
Government appointed directors after the 2003 AGM will be &quot;no more
than&quot; the number elected by shareholders. This implies that two of the
existing government appointees will stand down immediately after the AGM. There
will then be 13 directors, including the Chief Executive, whose appointment is
subject to SFC approval, which basically means Government approval. So elected
directors will be in a minority. In an ironic way, this structure looks just
like Hong Kong's Legislative Council. </p>

<h3> Why is David Webb standing?</h3>

<p>We believe that investors are vastly under-represented in the bodies that
determine the structure of our market, including HKEx. In the last three years,
the HKEx group, including its subsidiaries, The Stock Exchange of Hong Kong
Limited (<b>SEHK</b>), and Hong Kong Securities Clearing Company Limited (<b>HKSCC</b>)
have meandered through policy-making in a haphazard fashion without addressing
many of the concerns of investors about the future of the market. We have seen a
misguided <a href="http://www.hkex.com.hk/markets/nasdaq/ppmain.htm" target="_blank">foray</a>
into local trading of Nasdaq stocks, the <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020220news.htm" target="_blank">deferral</a>
of abolition of minimum brokerage in line with the wishes of many brokers on the
board of HKEx, the <a href="waiversgalore.asp" target="_blank">conversion</a> of
GEM into a dotcom casino by the relaxation of listing rules, an apparently <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020523news.htm" target="_blank">abandoned
plan</a> to cross-list stocks with the London Stock Exchange, a failure to
narrow the trading <a href="cutthespread.asp" target="_blank">spread table</a>,
a failure to innovate the <a href="/dbpub/subject.asp?c=108" target="_blank">CCASS</a>
system, and of course, the <a href="pipsireport.asp" target="_blank">penny
stocks fiasco</a>. That's just a sample - you can read more in our <a href="listhkec.asp" target="_blank">coverage</a>
of regulatory affairs. </p>

<p>The Exchange is no longer a private members club, run <i>by </i>brokers and <i>for
</i>brokers. It is a key part of Hong Kong's financial services core economy.
Many of the former members of SEHK and HKFE, who became the owners of HKEx when
it floated, have sold their shares, and it is time for HKEx to adopt a more
representative board which better reflects the interests of its shareholders and
investors at large. We hope that all shareholders, and particularly
institutional investors, will support the candidacy of David Webb. </p>

<p>As there are likely to be more candidates than the six seats available, it is
likely that this will be a competitive race. If you elect us, we will do our
best to further the interests of investors and the market as a whole. In the
long run, a prosperous market can only be good for HKEx. </p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
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