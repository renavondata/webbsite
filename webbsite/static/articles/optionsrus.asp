
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

<script type="text/javascript">document.title="Options-R-Us";</script>

	<div class="summary">Reacting defensively to our previous article and others that followed, the SEHK issued a statement claiming that no preferential waivers have been granted to anyone. Their announcement contained a number of misleading statements which cannot go unanswered. We also look at how a good governance framework would improve investor returns and lower the cost of capital to Hong Kong issuers.</div>

<h2 class="center">Options-R-Us<br>
<span class="headlinedate">7 March 2000</span></h2>
<p>In our article <a href="waiversgalore.asp" target="_blank">Waivers
Galore</a> on 21-Feb-00 we explained how Tom.com Ltd had been granted 3
exceptional waivers allowing the company to issue shares before 6 months after
listing, allowing the major shareholders to sell after 6 months rather than 2
years, and perhaps worst of all, allowing the directors to grant options over new
shares equal to 50% of the issued share capital, 5 times the previous limit. </p>

<p>After questions were raised by the print media, legislators and
the SFC (which caused a delay in the hearing of at least one applicant) the SEHK
issued on 24-Feb-00 what we regard as a defensive and misleading
&quot;clarification&quot; 
<a target="_blank" href="http://www.hkex.com.hk/news/sehknews/0224a.htm">statement</a>
which addressed two of these waivers and ignored the other. First, the SEHK wrote: </p>

<blockquote>
<p>&quot;For nearly a year, the Exchange and SFC have been jointly
consulting the market on proposals to relax staff stock option plans for all
listed companies to reflect changes in corporate cultures.&quot;</p>
</blockquote>

<p>The SEHK is referring to a consultation paper on the main board
listing rules that was released
on 26-May-99, 9 months ago. Although 
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/conpaper3.htm">that paper</a> contained proposals relating to
option schemes, there was no proposal to raise the 10% limit. In fact, the
Exchange proposed only to set a timeframe on the limit of 10 years rather than
the previous indefinite period, allowing a company to issue options over a
further 10% after 10 years. That was quite reasonable, because each options
scheme could not last more than 10 years anyway. </p>

<p>Referring to the 10% limit In that paper, the Exchange wrote: </p>

<blockquote>
<p>&quot;<b>The Exchange is of the view that a limit should be retained to avoid unreasonable
and on-going dilution of the shareholders' interests</b>&quot;</p>
</blockquote>

<p>The Exchange also proposed that options should not be
exercisable until 3 years after the date of grant, to provide a management
incentive to stay for the duration and reduce cases of abuse. The paper also contained many important
proposals on matters such as connected transactions and reverse listings. </p>

<p>The consultation period was extended to 31-Aug-99 then closed.
Most of these proposals were adopted in the first set of GEM listing rules, but have yet to be
implemented on the main board. It will come as no surprise to our readers that these proposals
mostly related to stronger regulation and closure of
loopholes. The Exchange seems ready to rush forward on relaxing rules, but is
pitifully slow at tightening them when they are now a for-profit entity.&nbsp; </p>

<h3>Financial Disclosure</h3>

<p>Another example of this foot-dragging is the paper issued in
late 1998 entitled 
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/conpaper2.htm">Market
Consultation Policy Paper on Financial Disclosure</a>. The consultation on this
paper, relating to the main board, closed over a year ago. This important paper
proposed shorter reporting deadlines, full financial statements in interim
reports, and even floated the idea of quarterly reporting for main board
companies. We explained this in more detail in a <a href="silence.asp" target="_blank">previous
article</a> on 30-Sep-99. </p>

<p>Since then, nothing has been heard of these proposals. We've got more chance of hearing from the
Mars Polar Lander. Even GEM companies, which must report quarterly, are allowed
to give the same skimpy financial statements that we see on the main board. No
balance sheet required. </p>

<p>How can we hope for a transparent market when the Exchange won't
even implement the most fundamental reporting improvements? </p>

<h3>The 50% limit</h3>

<p>In its 24-Feb-00 statement, the SEHK says: </p>

<blockquote>

<p>&quot;Discussion about the 50 per cent share option limit has
been continuing for about <b> six months</b>&quot; </p>

</blockquote>

<p>Discussions with whom, exactly? Internal discussions? Mutterings
with favorite sponsors over lunches? The first time that we heard about this
was when the SEHK wrote to us (and others who had commented on the May-99
consultation paper) on 29-Nov-99. That was not &quot;about six months&quot; ago,
that was only <b> 3 months</b> ago. The letter was a private circulation. </p>

<p>The Exchange made a 
<a target="_blank" href="http://www.irasia.com/regbod/hk/sehk/press/p991130a.htm">low-key
announcement</a> the next day (30-Nov-99), but unlike all recent
consultation papers, this one was not made available on the web, and the
announcement avoided giving any details of the proposals. Instead, only
the small circle of people who had replied to the first consultation got the
second paper. The announcement states that anyone else who wanted to see the
proposals had to write a letter to Mr Lawrence Fok, the Head of the Listing
Division. No fax, phone or e-mail address was provided. In our view, that's a
deliberate attempt to avoid publicity. The SEHK must have been aware how
controversial such a major change would be, but decided not to publicise it. The
announcement said only that &quot;<i>the new proposal includes certain
fundamental changes from the proposals included in the consultation paper</i>&quot;.
Needless to say, the media barely noticed it. </p>

<p>We had already made our views clear (see <a href="waiversgalore.asp" target="_blank">previous
article</a>) in the first round of consultation, so did not bother to reply to
the private consultation. </p>

<p>In its 24-Feb-00 statement the Exchange continues: </p>

<blockquote>
  <p>&quot;and some other GEM listing applicants have also been
  granted this waiver.&quot; </p>

</blockquote>
<p>For the record, no GEM companies listed prior to Tom.com had
been granted the waiver. It was a precedent, and since then some have received
the waiver and others have not. </p>

<h3>No approval</h3>

<p>The Exchange continues: </p>

<blockquote>
  <p>&quot;The increase to 50 per cent will require shareholders'
  approval for every 10 per cent to be issued, up to 50 per cent&quot; </p>

</blockquote>
<p>In the case of Tom.com, that simply was not true. The waiver is
clearly set out on page 23 of the prospectus and contains no such requirement for
shareholders' approval. This requirement was, as it happens, included in the
29-Nov-99 private consultation paper, but it was not imposed on Tom.com. </p>

<p>It is notable that the next GEM company to get the waiver is
Hongkong.com, and in their case the requirement for shareholders' approval of
each successive 10% mandate has been imposed. </p>

<p>In any event, the requirement is near-pointless because most
companies have controlling shareholders who appoint (or are) the directors.
Since these shareholders are allowed to vote, they can go on renewing their own
mandate until they get to the 50% limit. Each meeting takes less than 3 weeks to
convene,
and if the controller has more than 50% of the votes then a meeting is
redundant.&nbsp;The same abusive process is used by many main board companies to
keep on renewing their dilutive placing mandate. The Exchange itself knows this,
because in their May-99 consultation paper, in which they proposed to keep the
10% limit over 10 years, they wrote: </p>

<blockquote>

<p>&quot;Although there is no restriction
on number of options granted by listed issuers in the United States and the
United Kingdom, it should also be noted that the shareholders of listed issuers
in these jurisdictions are generally professional and institutional investors
who readily exercise their shareholder rights to prevent the management of
listed issuers from abusing share schemes.&quot;</p>

</blockquote>
<p>By
contrast, in Hong Kong, minority shareholders have very little say against
controlled companies. The solution here would be to require minority
shareholders' approval on a poll, with controlling shareholders abstaining.</p>

<h3>YAW - Yet Another Waiver</h3>

<p>In Hongkong.com's case, a new waiver has been introduced - the
option scheme applies not only to full-time staff, but to anyone who works (on
average) for 10 hours a week, to any non-executive or independent non-executive
director, and also to any &quot;consultant or adviser&quot;. No further
explanation is given. This would appear to allow the company to remunerate advisers
without putting the cost through the profit and loss account. Does it apply to
people like lawyers, bankers, sponsors, and PR agents? We are left to guess. The
ability to dish out options to independent non-executive directors when they
have a difficult decision to make (such as advising shareholders on a connected
transaction) also raises a possible conflict of interest. Most such persons are
normally just on fixed salaries. </p>

<h3>Defensive Action</h3>

<p>The Exchange remarks: </p>

<blockquote>
  <p>&quot;The proposed rule changes to increase the limit to 50
  per cent were submitted to the Exchange Council and approval was granted on
  February 21. The proposed rules changes were then submitted to the SFC for
  approval.&quot; </p>

</blockquote>
<p>First of all, note that the Tom.com prospectus was published 3
days before the Exchange Council approved the rule change. This was almost the
last act of the Exchange Council as it was
<a target="_blank" href="http://www.hkex.com.hk/news/sehknews/0306.htm">disbanded</a>
on 6-Mar-00. Secondly, note that
the changes have been &quot;submitted&quot; to the SFC but not approved. The
cart is rolling way ahead of the horse, and it's not too late for the SFC to
stop it. </p>

<p>Next, the Exchange says: </p>

<blockquote>
  <p>&quot;All proposed waivers and rule amendments have followed market
  consultation and detailed deliberation. In addition, the Exchange believes it
  was acting with SFC consent pending formal approval.&quot; </p>

</blockquote>
<p>We've already explained how feeble the consultation effort was.
&quot;We thought we had permission&quot; doesn't cut it for us. It is
interesting to note that the SFC had already contemplated the possibility of the
Exchange waiving its own rules to effectively scrap them, and so the GEM rules
have a rule which prevents that. Rule 2.07 says in part: </p>

<blockquote>
<p>&quot;The Exchange will not grant an individual waiver or
modification of a rule, or agree not to require compliance with a rule, on a
regularly recurring basis so as to create the same result as a general
waiver.&quot; </p>

</blockquote>
<p>Is the Exchange breaking its own rule? Perhaps if we just waive that
rule as well, then all the other rules can be waived! </p>

<h3>The balance between regulation and free markets</h3>

<p>Let's take a step back here. The &quot;big picture&quot; is that
Hong Kong wants to develop a &quot;world class&quot; financial centre. We're all
on the same page there. What the Exchange fails to realise is that a strong
framework of disclosure and minority shareholder protection is essential to this
goal. </p>

<p>Such protections are not designed to hamper companies in their
development. Professional investors are very happy to take business risks, but
they detest having to take risk of minority shareholder abuses, or in the worst
case, outright fraud. No framework can eliminate that risk completely, but a
good framework can cut it down considerably. Put any reasonable proposal to
minority shareholders and they are very unlikely to vote it down. On the other
hand, give blanket authorities to directors who are also controlling
shareholders, and some will always find a way to abuse them. </p>

<p>Reducing &quot;governance risk&quot; will increase returns for
investors, which will attract capital and lower the cost of capital to
companies. If you don't believe this, look at the state of mainland H-shares and
B-shares. Despite years of strong economic growth in China, their overall
performance has been appalling - not appealing. </p>

<h3>Big Apples and Kum-Kwats</h3>

<p>GEM spokespersons repeatedly make references to overseas
competitors (including Nasdaq) and engage in a me-too argument to support the
relaxation of rules. Unfortunately, they are comparing Big Apples and Kum-Kwats.
The regulatory framework of any country includes not just exchange rules but
also the legal framework. </p>

<p>In the US, that includes state and federal securities laws which
impose harsh penalties and allow class-action lawsuits as well as speculative
legal action. Even if shareholders so much as think the management should have
issued a profit warning before a bad earnings surprise, then a lawyer will
embark on speculative legal action with the prospect of winning millions for the
whole class of shareholders. That system is not perfect, but it does provide a
form of deterrent to bad behaviour and an incentive for transparency which Hong Kong simply doesn't have. </p>

<p>That makes the listing rules a very important first line of
defence. </p>

<p>Legislators take note - it is high time the listing rules had
statutory backing and meaningful fines were imposed on offending directors. </p>

<h4>Out of the Pond </h4>

<p>Secondly, let's take a reality check. Conglomerates here are big
fish in a small pond, but with one or two exceptions their names mean little on
main street USA. You will not get 450,000 people in Manhattan queuing up to buy
shares in an internet spin-off which runs a web-site for a radio company it
doesn't even own, and is controlled by a man most Americans have never heard of.
Local stocks need local following.&nbsp; </p>

<p>History has shown us that there are very few successful examples
of companies listing outside their natural market place, and issuers know this.
Ask the Jardine group, now in the London and Singapore wilderness. Ask Huaneng
Power and Brilliance China Automotive, which listed in New York and then came
back to HK. Or Guangdong Building Industries, which listed in Australia and
later in HK. The after-market glow of flotation soon fades as the foreign
markets move on to the next deal. Sure, you can have a dual listing with an
overseas exchange, like i-Cable or CTI, but HK still has a huge locational
advantage. Let's not erode that with an inadequate governance framework. </p>

<p>&quot;Buyer beware&quot; is a valid maxim, but we cannot aspire
to be Metropolis with a Dodge City framework. </p>

<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10220">Sino Splendid Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10265">TOM GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=147">Growth Enterprise Market</a></li>
				
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