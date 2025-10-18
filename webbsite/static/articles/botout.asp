
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

<script type="text/javascript">document.title="Christmas is Cancelled";</script>

	<div class="summary">After a 5 month Battle of Boto, the deal goes ahead in a vote won by the narrowest of margins, and only because it was stacked with management-related votes, by kind permission of the Stock Exchange of Hong Kong. Over three quarters of the public votes were against the deal. Will minorities ever get a level playing field in Hong Kong? For now, they have an unlevel minefield.</div>

<h2 class="center">Christmas is Cancelled<br>
<span class="headlinedate">19 August 2002</span></h2>
<p>Sorry folks - Boto International Holdings Ltd (<b>Boto</b>)
won't be making any more Christmas trees this year. At the Special General
Meeting this morning, the resolution to sell the core festive products and
garden furniture business to a vehicle 75% owned by Carlyle group and 25% by
Boto (with 15% management options) was approved, on the face of it, by the narrowest of margins. </p>

<p>The outcome was: </p>

<img class="center" alt="" src="../images/botout1.gif">

<p>In fact, this is not as close as it seems. Most of the shares
voted in favour were management-related in some fashion. They almost certainly include the <b>5.54%</b> held by Liliana Tsen Yun Lei
(<b>Ms Tsen</b>, aged 53), an executive director of Boto who retired from the board at Friday's
Annual General Meeting, and the <b>4.08%</b> held through HSBC as trustee
of&nbsp; the Law Pun Leung Family Trust, established by a deceased co-founder of
the company. These total 9.62%, which implies that the only other shares in
favour were 5.13%. That's too small to be Shanghai Industrial Investment Co Ltd
(<b>SIIC</b>) which owns 5.83% and sources confirm abstained. </p>

<p>Several senior managers (non-directors) were permitted to vote,
including Philip Kao, nephew of Chairman Michael Kao (<b>Mr Kao</b>). The senior
managers' total shareholdings have not been
published, but we know from our previous inspection of the share register that
they are hold at least <b>0.81%</b> (by comparing the
register with the names of senior managers in the annual report). The
registered shares likely arose from the exercise of share&nbsp; options, as most investors who
buy shares in the market leave them with their bank or broker who in turn holds
them through HKSCC Nominees Ltd, the central clearing company's nominee. The senior
management may well have other shares which were acquired and held in this
manner - we have no way to tell. </p>

<p>It is reasonable to assume that all the senior management who
were permitted to vote, voted in favour of the proposal of their boss. It can't
be a bad career move. So combining Ms Tsen, HSBC and senior managers, that
makes a total of at least 10.43% and leaves not more than 4.32% unaccounted for. </p>

<p><b>So the vast majority (13.22% versus not more than 4.32%),
that is, at least 75% of the shares held and voted by the public were cast against the
transaction.</b> </p>

<p>Unfortunately , this was not enough. Readers may recall that the
Listing (Review) Committee of the Stock Exchange, on an <a href="botoupdate2.asp" target="_blank"> appeal</a> from Boto, ruled
that Ms Tsen could vote her 5.54%. It was also ruled by the Stock Exchange that
Silverbay Group Ltd, the BVI company held by HSBC as trustee, could vote its
4.08%. This is having regard to the fact that the banking arm of HSBC was
providing debt finance of US$104m, or about 80% of the purchase price in the
transaction, and notwithstanding the fact that Silverbay's address on the share
register was the same as Boto's head office. </p>

<p>It is obvious from today's outcome that if either of these shareholders
had been prohibited from voting, the proposal would have been defeated by a large margin.&nbsp; </p>

<p>For the first time in the Hong Kong market in about 10 years, an
Independent Financial Adviser (Anglo Chinese Corporate Finance Ltd) went against
the management who appointed them and advised shareholders to vote against the
deal, which the IFA said was not fair and reasonable. We think they must have
had serious concerns about the deal for taking such an unusual step. </p>

<h3>Shy INEDs</h3>

<p>At this morning's SGM, only one of the two
&quot;independent&quot; non-executive directors, Mr Oh Kok Chi (<b>Mr Oh</b>)
was present - and he did not even sit on the podium and only identified himself
in the audience near the end of the two-hour question-and-answer session when we
asked where the INEDs were and what they thought. </p>

<p>We asked Mr Kao and Deputy Chairman Mr Philip Lam (<b>Mr Lam</b>)
(several times, in several different ways) for the opinion of the independent
directors, and they declined to say. When we asked directly, Mr Oh declined to
disclose his opinion and simply said that he wasn't required by any rule or law
to give an opinion, which is true, but not exactly illuminating. He and Mr Lam
said that in the board meeting to consider the final deal, some directors were
in favour and some abstained. When pressed, Mr Lam said that one independent
director (Mr Alexander Reid Hamilton) had not even attended the board meeting,
but there were abstentions at the board meeting, in the plural. This wall of
silence suggests that neither Mr Oh nor the other non-executive director, Mr
Zhou Fu Min (who until recently represented SIIC) voted in favour of the deal at
the board meeting, because if they had, then the management would have&nbsp;
been pleased to say so. </p>

<p>Once again, we say that independent directors should be elected
by independent shareholders. Let's hope Boto's INEDs are both shy <i>and</i>
retiring, without further delay. </p>

<h3>The Bottom Line</h3>

<p>After a five month Battle of Boto, here's the score. We have an
IFA recommending shareholders to vote against the &quot;inadequate&quot; deal,
something we have not seen since before the World Wide Web was invented. We have
non-executive directors who decline to express an opinion, and certainly not a
favourable one. Fewer than 4.3% of the company's shares were voted by the public
in favour of the deal, and 13.22% against. And yet we still can't stop the deal. </p>

<p>In Hong Kong, the decks are firmly stacked against independent
shareholders. We lost this vote because the Stock Exchange and the Listing
Committees accepted appeals from management which allowed them to push the deal
through. It wasn't surprising - a maximum of 4 fund managers are allowed out of
25 members of the Listing Committee. Until the Stock Exchange and its Listing
Committees reflect investor interests and give the benefit of the doubt to
independent public shareholders, Hong Kong will continue to be a minefield for
investors. What was so wrong with the idea of restricting the vote to truly
independent shareholders? If the deal was fair, we would have been in favour. </p>

<p>The miracle of all this is that despite these hurdles and the
management-related votes stacked against us, we came so close to winning, just
1.53% of the company would have been enough. A couple of institutions whose
shares would have swung the deal, chose to cut their holdings, perhaps in fear
of what might happen if we won. One was a value investor who should have known
better. Minority shareholders must stand and fight for their rights, and more
importantly, campaign for a more level playing field without the landmines.&nbsp; </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
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