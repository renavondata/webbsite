
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

<script type="text/javascript">document.title="Listing Rules Review Part 2: Board Games";</script>

	<div class="summary">In Part 2 of our review of the proposed Listing Rule changes, we look at the fundamental question of independent directors and committees. Here again, the SEHK wins a perfect 6.0 in the "form over substance" category. They are skating on thin ice by allowing controlling shareholders to elect " independent" directors, a system which has failed to prevent numerous horror stories on Webb-site.com. Independent directors should be elected by independent shareholders.</div>

<h2 class="center">Listing Rules Review Part 2: Board Games<br>
<span class="headlinedate">21 February 2002</span></h2>
<p>Long-time readers of Webb-site.com will recall the many
corporate horror stories we have covered. In almost every case, the listed
company in question complied with the technical requirement in the Listing Rules
of having two &quot;independent non-executive directors&quot; (<b>INEDs</b>). And yet
disaster still struck. How many times have you wondered &quot;why don't the
independent directors do something about this?&quot; </p>

<h3>What are INEDs for?</h3>

<p>The main purpose of INEDs, if you are a public shareholder, is
to provide a &quot;watchdog&quot;, a set of independent eyes and ears in the
boardroom, ideally attached to an independent brain, which will represent and
monitor
your financial interest in the company, and try to prevent the rest of the board from favouring the
directors or controlling shareholder above all the other shareholders, including
you. Directors are often privy to information that cannot for commercial or
other reasons be published, so INEDs provide a buffer to tell the board
what independent shareholders might think if they knew - and protect their
interests accordingly. </p>

<p>Under the Listing Rules, INEDs are often called upon to form a
committee to advise public shareholders on whether a &quot;connected
transaction&quot; between a company and its controlling shareholder is fair and
reasonable. For example, asset injections of dot-com companies or PRC property
projects which may be priced artificially high in order to extract cash from a
company, or under-priced sales in the opposite direction. Other cases involve
transfer pricing of raw materials or finished goods from or to connected parties, joint
ventures with connected parties and so on. All of these are an opportunity for
theft if there are no checks and balances. </p>

<p>In privatisation offers under the takeover code, INEDs have to
advise shareholders on whether to accept the offer. Other duties of INEDs,
common in other markets but not yet in HK, are to form remuneration committees (to review
executive directors' pay packages) and nomination committees (to review new
appointments to the board). </p>

<p>Of course, other non-executive directors can also be appointed
to provide expertise from their current or former profession, and may provide
valuable advice or guidance to the executive board in their strategic decision
making.
But that role is very much one of a consultant, and does not remove
the need for watchdogs. </p>

<h3>Why INEDs are ineffective in Hong Kong</h3>

<p>The reason that INEDs are so ineffective is quite simple, and
its the same in any market where controlling shareholders predominate. The INEDs
are not usually independent. They are chosen by the executive board, which in
turn is appointed by the controlling shareholder. Depending on the country of
incorporation and the Articles of Association (or rules), at the first Annual General
Meeting (AGM) after his or her appointment, a director has to stand for election
by shareholders, and then typically every 3 years after that. However, the
controlling shareholder also gets to vote on that election or re-election, and
thereby determines the outcome. In addition, most companies have Articles which
allow the board to remove a director by a 50% or 75% majority vote of the other
directors. </p>

<p>So the monitors are appointed and removable by the people they are supposed to
monitor, and the system is fundamentally flawed. Of course, some companies have
honest and diligent management who seek out truly independent souls and appoint
them to their board. These are the companies who we have least to worry about,
whose INEDs then have less to worry about too! </p>

<p>On the other hand, if a controlling shareholder has something to
hide, or wants a particularly favourable deal, then any INED who starts opposing
and behaving independently will be voted out at the next AGM, and knowing this,
will normally accept his final pay cheque and resign upon request. Indeed, the
simplest way to get rid of an INED is probably to stop paying them. </p>

<p>Over 90% of Hong Kong-listed companies have a single shareholder
(family or government) or concert party who hold sufficient votes to control the
board. Amongst the Hang Seng Index, which covered 82.9% of the market value at
31-Dec-01, only one of the 33 stocks has no controlling shareholder - and that
is HSBC Holdings plc, a UK-domiciled, UK-listed and UK-headquartered company, so
they are good, but they don't count. </p>

<h3>Mandate and Accountability</h3>

<p>We first <a href="INED.asp" target="_blank">wrote</a> about this
problem back in Apr-99. The solution is simple, and would involve just a few
paragraphs in the Listing Rules.&nbsp; </p>

<p><b>INEDs should be elected by independent shareholders. Any
shareholder or concert party holding 20% of more of the votes, should be
prohibited from voting on such elections unless they can show to the
satisfaction of the regulator that they have no existing board representation.</b> </p>

<p>The rule in companies' articles which allows INEDs to be removed
by the other directors should be scrapped. Any proposal to remove an INED should
be put to independent shareholders in general meeting. </p>

<p>Given these simple steps, we would then have INEDs who are
accountable to independent shareholders, and who have a mandate to act on their
behalf. Without fear of ejection, they can then ask whatever questions and for
whatever material or expert advice they think is necessary to carry out their
duties to ensure that all shareholders are&nbsp; treated fairly and equally. </p>

<p>The nominations committee of each company would then make
recommendations which are acceptable to minority shareholders, who would also be
at liberty (with a nomination requirement of say 5% of the publicly
held shares) to nominate their own candidates instead. </p>

<p>INEDs should receive a decent pay for carrying out their duties,
and the Listing Rules should set a minimum fee, so that companies cannot avoid
their responsibilities by offering so little to INEDs that only the unqualified
will apply. The actual pay package for each INED should be fixed and approved by shareholders
in the same vote as the election, so that there is no possibility of executive
directors bribing the INEDs to approve dodgy deals in return for bonuses, share
options or anything else at their discretion. </p>

<h3>The SEHK Position</h3>

<p>The SEHK knows where we stand. They say in their <a href="http://www.hkex.com.hk/library/listpaper/Corporate%20governance%20issues.pdf" target="_blank">consultation
paper</a>: </p>

<blockquote>
  <p>&quot;We also note comments that INEDs should be appointed or
  removed by minority shareholders so as to ensure that INEDs are not influenced
  by controlling shareholders&quot; </p>

</blockquote>
<p>but then here comes that old &quot;Asian values&quot; argument: </p>

<blockquote>
  <p>&quot;A harmonised board is an essential element for an
  effective board&quot; </p>

</blockquote>
<p>We are not talking about barbershop quartets here. It may be the
way the National People's Congress is run, but in successful developed
economies, a difference of opinions, debate, and fair representation of all
parties is essential to good governance. There are unfortunately strong echoes
of Hong Kong's non-democratic system of executive government in the way the SEHK
thinks boards should be appointed, with the majority shareholder choosing all
the directors. That's no way to run a company, let alone a society. </p>

<p>Look no further than the board of HKEx (owner of SEHK) for proof
of this. Even though it is one of the few listed companies in Hong Kong with no
controlling shareholder, a majority of its directors are appointed by the
Government to ensure that it is controllable as a for-profit monopoly and
regulator. That power was just recently used to <a href="nofreemarket.asp" target="_blank"> maintain</a> the
anti-competitive minimum brokerage
rate. The Government also has majority ownership of the listed <a href="../dbpub/articles.asp?p=11569" target="_blank">MTR
Corporation Ltd</a> and as far as we know, the Government votes on all the
directors' elections.&nbsp; </p>

<p>Incidentally, the Government also obtained a blanket waiver at
the time of its IPO to prevent minority shareholders from voting on land
transactions between the Government and the MTR. So much for leadership in
corporate governance. </p>

<p>The SEHK concludes: </p>

<blockquote>
  <p>&quot;We do not consider that it is necessary to require appointment or
  reappointment of INEDs to be subject to independent shareholders'
  approval.&quot;</p>
</blockquote>

  <p>If a company wishes to receive the benefit of public capital, then it must
  be willing to allow public representation in its boardroom.</p>

<h3>Committees</h3>

<p>We could almost stop there, but just in case the SEHK
sees the error of their ways and agree that minority shareholders deserve (minority) representation in the board
room in return for their money, we will review the SEHK proposals on
committees next. </p>

<p>The SEHK gives a lot of space in its consultation paper to the
notion of recommending (but not requiring) companies to have remuneration
committees and nomination committees, and making audit committees mandatory.
While these committees are good things in principle, they are almost pointless
so long as the INEDs which form these committees are not elected by independent
shareholders. This is the &quot;form over substance&quot;. </p>

<p>The SEHK first proposes to amend the rules to require that
&quot;not less than one-third&quot; of the board shall be INEDs, and in any
event not less than 2. That last part almost goes without saying, because the
first part means you need 1 INED for every pair of executive directors (EDs) and
one more if there is an odd number of EDs. So if you have 3 or more executive directors (as
nearly all companies do) then one INED will not be enough. </p>

<p>It brings up the interesting scenario that HK-listed companies
will strive to have an even number of Executive Directors, to avoid the INEDs
being more than one third of the board. So boards of&nbsp; 3, 6 or 9 directors
(with 2, 4 or 6 EDs) will become popular. Again, the one-third rule is nice in
principle, but the move is meaningless if they are not independently elected. </p>

<h4>Audit committees </h4>

<p>The SEHK proposes to make audit committees mandatory. Audit
committees are currently required if you want to comply with the <a href="http://www.hkex.com.hk/rulereg/listrules/app14.doc" target="_blank">Code
of Best Practice</a> in Appendix 14 of the Listing Rules, which is non-binding.
Making it mandatory is not a huge step, because nearly all listed companies
comply with the code of best practice, since if they don't, they are required to
say why not, under paragraph 34 of <a href="http://www.hkex.com.hk/rulereg/listrules/app16.doc" target="_blank">Appendix
16</a>. It's like so many of Hong Kong's codes - you are practically presumed to
be bad in the event of other disciplinary matters if you don't comply with the
code. So boards have voluntarily complied and set up audit committees to reduce their overall exposure. </p>

<h4>Remuneration committees </h4>

<p>In the most tentative terms, the SEHK brings up the idea that
directors might, just maybe, have a teensy weensy conflict of interest in
deciding their own pay, writing: </p>

<blockquote>

<p>&quot;There may be a conflict of interest when board members are
asked to decide their own remuneration packages&quot; </p>

</blockquote>

<p>&quot;<i>May be</i>&quot;? There <i>always</i> is, by
definition. It's like asking a skater to score her own performance. However
objective they are, the conflict exists. The SEHK then strengthens its view,
stating: </p>

<blockquote>

<p>&quot;We take the view that this is particularly relevant in the
Hong Kong context where controlling shareholders in management [who are also
directors] tend to have significant influence on the board.&quot; </p>

</blockquote>

<p>Our hearts leap with anticipation, and this seems to be heading
the right way, until the next sentence, when they contradict this position,
stating: </p>

<blockquote>

<p>&quot;We are of the view that a remuneration committee may be
more appropriate for large issuers or issuers with widespread shareholding
structure.&quot; </p>

</blockquote>

<p>Eh? Just now you said it was important in the case of <i>controlling
shareholders</i>, and now you say it is more important for <i>widespread
shareholding</i> structures, where by definition there are fewer or no
controlling shareholders? Which is it to be? Someone must have done some last minute
editing there! </p>

<p>In the final sentence of its analysis, the SEHK again shows
its true colours by providing an excuse for the 90% of the companies (by number)
which makes up 10% of the market value: </p>

<blockquote>

<p>&quot;It may not be appropriate to impose such a requirement on
issuers with smaller boards&quot;. </p>

</blockquote>

<p>In fact, it is exactly the opposite - small companies with
small, family-dominated boards can do proportionately far more damage to
shareholder value with inflated pay packages than giving an extra million or two
dollars to a director of a large company with billion-dollar profits. </p>

<p>The SEHK concludes that they propose to amend the Code of Best
Practice to recommend, but not require, remuneration committees. </p>

<h4>Nomination committees </h4>

<p>Here we go again. The SEHK says: </p>

<blockquote>

<p>&quot;a nomination committee may not be appropriate for issuers
with small boards&quot;. </p>

</blockquote>

<p>Stop and think about this. If you are making an addition of one
singer to say, a barbershop trio, turning it into a quartet, then it may have a
pretty dramatic impact on the sound, even if they are &quot;harmonious&quot;.
Make one change to a 32-voice choir, and the impact is much more subtle. So the
importance of who you select for that small board should be greater because of
the voting weight they carry and the share of the management duties they
undertake. </p>

<p>In the case of both remuneration and nomination committees, most of HK's 900 listed companies, which have &quot;small boards&quot;
will now have a ready-to-wear reason, from the mouth of the SEHK, for not
voluntarily setting up these committees. </p>

<p>At this rather odd point in the consultation paper, the SEHK
also throws in for good measure: </p>

<blockquote>

<p>&quot;the enhancement of corporate governance standards should
be a progressive process&quot; </p>

</blockquote>

<p>For <i>progressive process</i> read <i>slow and gradual</i>. In
other words, &quot;Lord make us holy, but not just yet&quot;. We know a euphemism
when we see one. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=154">Independent Non-Executive Directors</a></li>
				
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