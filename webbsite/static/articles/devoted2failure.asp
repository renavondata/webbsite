
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

<script type="text/javascript">document.title="DeVoted to Failure - HK's Share Voting System";</script>

	<div class="summary">We show you just how hard HKEx makes it for investors to vote their shares in listed companies. Brokers and banks have no obligation to seek voting instructions, HKEx's CCASS system leaves Investor Participants guessing, and even if you succeed in giving voting instructions to HKEx, it won't demand a poll, so your votes probably won't be counted.</div>

<h2 class="center">DeVoted to Failure - HK's Share Voting System<br>
<span class="headlinedate">9 December 2002</span></h2>
<p>Watching the small-circle election of the 36
Hong Kong delegates to the National People's Congress last week (electorate: 953), we were struck
by how efficient, democratic and representative that process seems - when
compared to the way shareholder voting is conducted in Hong Kong.&nbsp; </p>

<p>Have you ever tried to vote your shares in a Hong Kong listed
company? If you are an individual investor, then you probably hold your shares through the
bank or broker who bought them for you, who in turn holds them through the
Central Clearing and Automated Settlement System (<b>CCASS</b>) run by Hong Kong
Securities Clearing Co Ltd (<b>HKSCC</b>) which, like the Stock Exchange of Hong
Kong Ltd (<b>SEHK</b>) is wholly owned by Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>).
HKSCC is a <i>de facto </i>monopoly, because shares must be deposited in its
system before they can be used to settle transactions on SEHK (which is also a
monopoly). </p>

<p>Chances are, your bank or broker doesn't even seek your voting
instructions, and you have to push hard to get them to tell CCASS to vote. We
have yet to see any online broker in HK with an online voting facility. However, there is an
alternative way for investors to hold shares. </p>

<p>Since 1998, HKSCC has been quietly operating a system to allow
investors to participate directly in CCASS, called the <a href="http://www.hkex.com.hk/acctsvc/acctsvc.htm" target="_blank">Investor
Participant</a> system. Doing so gives you direct control of your own shares,
and removes the risk of your broker abusing or running off with them, as 3
collapsed brokerages have allegedly already done this year. We say
&quot;quietly&quot; because we cannot recall seeing any HKEx advertisements for
this service in several years. Initially, the system was operated by telephone,
like phone-banking, but since late 2000, an <a href="https://ip.ccass.com/" target="_blank">internet
system</a> has been available, provided that you have a suitable digital
certificate. Again, this is a monopoly - only a <a href="http://www.hongkongpost.gov.hk/" target="_blank">Hongkong
Post</a> e-Cert is accepted. </p>

<p>Like most monopolies, HKSCC, facing no competition, has been very
slow to innovate the Investor Participant system. Indeed, the <a href="http://www.hkex.com.hk/index.asp?id=acctsvc/newsletter/newsletter.htm" target="_blank">latest
news</a> link on their web site takes you back over two years to a Sep-00 item which, ironically, announces the launch of the
internet system. The last published figures we have were for 7,345 Investor
Participants, as shown in the Sep-00 final issue of HKSCC's <i>ClearTalk</i>
magazine. The magazine was axed, 6 months after HKSCC became a for-profit
company and a subsidiary of HKEx. </p>

<p>The phone system is excruciatingly slow, taking around 2 minutes
per transaction to &quot;affirm&quot; a transaction (to authorise payment for
shares or delivery of sold shares from your account) as it spells out all the
details and repeats warnings. The system
is open for instructions only between 10:00 and 15:45, Monday to Friday, or <b> 17%</b>
of the week. Outside of those hours, you can affirm a transaction between 15:45 and 19:00, 5 days a week, but that
affirmation will only count on the next business day. Imagine what life would be like if banks operated ATMs
or internet banking on that
schedule, rather than 24x7. </p>

<p>The CCASS internet system operates on the same brief hours as
the phone system. It is clunky, for
example requiring the user to agree to a 1,200 word disclaimer each time they
log in
- we wonder how many people would notice if they changed a few words. </p>

<p>Brokers don't want you to know about the Investor Participant
system, because they benefit from holding your stock - they get the sale order
when you eventually sell, and they get to mark up the various fees charged by
CCASS. If you've signed a margin finance agreement, they may also use your stock
for collateral for their own borrowings. </p>

<h3>Voting Blind</h3>

<p>The Investor Participant system allows investors to vote their
shares, but makes it so difficult that most people do not bother. Now, take a
look at the following input voting screen from the CCASS system: </p>

<img class="center" src="../images/CCASSvoting.GIF" alt="Don't click the voting buttons, this is just a picture!">

<p>What do you see? Absolutely no description of the 17 resolutions
you are trying to vote on. This is not a one-off aberration, it is the same for
every meeting of every company in the CCASS system. Not only that, but ten of
the resolutions have the same number (resolution 3) - so how do you know which
is which? </p>

<p>A very patient investor might now search the HKEx company
announcements web site for the Notice of General Meeting, and in this example,
the notice is <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020924/LTN20020924116.PDF" target="_blank">here</a>.
Now look at the content - under the HKEx's antiquated Listing Rules, companies
just produce a basic description of the &quot;ordinary business&quot;, listing
the &quot;purposes&quot; of the meeting rather than the exact resolutions to be
voted on. In this case, &quot;purpose 3&quot; is <i>&quot;to elect Directors and
to authorise the Directors to fix their fees&quot;</i>. So it is a fair guess
that the ten items above involve voting for or against the election or
re-election of 9 separate directors, and then authorising the board to fix the
fees. </p>

<p>Obviously, we still don't know which director corresponds to
which button in the voting screen. In fact, HKEx knows this because, as the
registered holder of your shares, HKSCC Nominees Ltd (owned by HKEx) has
received a proxy form listing each resolution with a brief description, for
example &quot;To re-elect Mr A. B. Chan as a director&quot;. This proxy form is
not something which is published on the HKEx web site of companies' documents,
so we can't show you what it looks like or in what order the names appear. </p>

<h3>Voting blind</h3>

<p>Faced with this insurmountable barrier, the diligent investor,
taking his responsibilities as a shareowner seriously, gives up trying to vote.
To vote for or against each resolution without knowing who or what they are
would be shooting in the dark. It makes the famously confusing <a href="http://stevegarufi.com/butterflyballot.jpg" target="_blank">Palm
Beach County butterfly ballot</a> look like child's play. At least they had a
shot at voting for the right person, even if thousands accidentally voted for
right-wing Pat Buchanan instead of democrat Al Gore, determining the outcome of
the 2000 US Presidential election. </p>

<h3>But the votes don't count</h3>

<p>It's worth mentioning that, in most shareholder meetings, giving
voting instructions to HKEx in this way (even if you figure out who you are
voting for) is futile, because HKEx sends just one person to the meeting, to
represent all the shares registered through CCASS, including most of the shares
owned by individual and institutional investors. </p>

<p>The HKEx representative does not demand a poll. Hence on a
&quot;show of hands&quot;, she counts for one hand on behalf of all CCASS
participants (including banks, brokers, custodians and investor participants)
while all the other &quot;hands&quot; in the meeting room (usually
management-affiliated hands) outvote her. Only if a poll is taken will the
instructions you give to HKEx make any difference. </p>

<p>For the time being then, share voting in HK has the following
hurdles:</p>
<ul>
  <li>the system is only open for voting
    17% of the time;</li>
  <li>banks and brokers seldom seek
    voting instructions from owners;</li>
  <li>the notice of meeting does not
    itemise the resolutions, just stating a purpose;</li>
  <li>Investor Participants can't figure
    out what or who they are voting for; and</li>
  <li>anybody who succeeds in giving
    voting instructions to CCASS will not normally get their shares counted in
    the vote.</li>
</ul>

<p>Nobody, not even the Government, could have devised a system
more likely to frustrate democracy. </p>

<h3>What we need</h3>

<p>The HKEx and SFC regularly bemoan the lack of shareholder
activism, while doing nothing to resolve the problems which prevent effective
voting. What we need is: </p>

<ol>
  <li>Registered dealers (including banks
    and brokers) must be required to seek voting instructions from beneficial
    shareowners on every meeting. They can either add online voting to their
    online dealing, or for non-internet clients, send notice by mail. This is
    standard procedure in the USA.</li>
  <li>HKEx's CCASS system (and in
    particular, the voting system) should be open 24 hours a day, 7 days a week.</li>
  <li>Listing Rules should require
    notices of shareholder meetings to give the full text of each proposed
    resolution, not just list the &quot;purposes&quot; of the meeting. There
    should be a 1-to-1 correspondence between proposals and resolutions.</li>
  <li>The summary text of each
    resolution, as set out in the proxy form, should be displayed on the CCASS
    internet system, so we know who or what we are voting for.</li>
  <li>All listed companies should conduct
    a poll on each resolution, so that the votes get counted.</li>
  <li>Failing (5), HKEx should always
    exercise its right to demand a poll. HKEx (via HKSCC Nominees Ltd) holds
    more than 10% of nearly every listed company (which entitles a shareholder
    to require a poll), so a poll would then be taken. Then, the actual votes
    instructed by investors would be counted, 1-share-1-vote.</li>
  <li>Companies should be required to
    announce the result of every vote (the number of shares voted for and
    against each resolution) to HKEx. Even if a single controlling shareholder
    calls the shots, investors are entitled to know the degree of dissent or
    approval of management resolutions.</li>
</ol>

<p>Until then, the Hong Kong share voting system will be deVoted to
failure. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=108">CCASS</a></li>
				
				<li><a href="/dbpub/subject.asp?c=172">Poll voting</a></li>
				
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