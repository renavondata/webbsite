
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

<script type="text/javascript">document.title="Stop the Press";</script>

	<div class="summary">SCMP Group, publisher of the leading local English language paper, has admitted it has too much capital and is proposing a share buyback offer which its largest shareholder, Kerry Group, will not accept, thereby increasing its stake above the takeover threshold. Webb-site.com recommends independent shareholders to vote AGAINST the plan and instead urge the company to pay a special dividend. If Kerry wants full control, it should make a privatisation offer.</div>

<h2 class="center">Stop the Press<br>
<span class="headlinedate">4 September 2002</span></h2>
<p>Last night, with its <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020904/LTN20020904007.pdf" target="_blank">interim
results</a>, <a href="http://www.scmpgroup.com/">SCMP Group Ltd</a> (<b>SCMP</b>,
0583) <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020904/LTN20020904017.pdf" target="_blank">announced</a>
a plan to make a share buyback offer to purchase up to 10% of the issued shares
at $3.60 per share. That's just a 5.1% premium to the market price of $3.425 per
share when it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020903/LTN20020903064.HTM" target="_blank">suspended</a>
at 15:23 yesterday. Normally suspensions take place for a whole afternoon or
day, so this appears to have lacked planning. </p>

<p>Kerry Media Ltd and its concert parties (<b>Kerry Group</b>)
hold 34.93% of SCMP Group and has undertaken not to accept the offer, but they
would obviously like you to do so, since that would increase their holding from
34.93% to 38.81%. </p>

<p>Under the recent revisions to the Takeover Code, SCMP Group was
one of the companies left in the &quot;<a target="_blank" href="http://www.sfc.hk/sfc/html/EN/cfd/mergers/share/share.html">twilight
zone</a>&quot; as Kerry Group had less than the old bid trigger of 35%, but more
than the new bid trigger of 30%. Accordingly, it is allowed to move freely in
this zone so long as it stays between those two levels. Any move through 35%
would trigger a general offer obligation. </p>

<p>The buyback offer is conditional on independent shareholders
approving a &quot;Whitewash Waiver&quot; under Note 1 of the Notes on
dispensations from
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Rule
26</a> of the Takeover Code. To Americans a Whitewash Waiver might sound like
the presidential pardon of Nixon, but in HK and UK it is the waiving of the
obligation to make a general offer. </p>

<h3>Your vote counts</h3>

<p>Unlike transactions under the Listing Rules, where a show of
hands often rams things through, the vote of independent shareholders (excluding
Kerry Group) under the Takeover Code must take place on a poll, with 1 vote
per share and proxy votes being counted. So this is a chance for institutional
investors to fulfil their obligations to beneficiaries and get their votes counted. </p>

<p>Under the &quot;creeper&quot; limit in Rule 26.1(c) of the Code,
if this deal is approved, then Kerry Group will be free to increase its holding
at the rate of 2% per annum after the buyback without making a general offer. It
would only take 5 years to achieve majority control, and after that it can buy
as much as it likes. The passage through the 35% limit is therefore crucial. </p>

<h3>SCMP admits it has too much money</h3>

<p>Under &quot;reasons for the offer&quot;, SCMP states that <i>&quot;<b>the
Group's future capital requirements do not require the maintenance of the
current capital base&quot;</b></i><b>.</b> In other words, they have too much
money. </p>

<p>SCMP states that if the offer had taken place at the beginning
of the latest audited financial period, which ran for 18 months to 31-Dec-01
(due to a change of year end), then net asset value per share would have
decreased by 22.95% from $1.22 to $0.94 at the end of the period, and the return
on shareholders' funds would have increased from 22.91% to 31.55%. </p>

<p>That's fine, and we indeed encourage companies to return surplus
capital to shareholders, but the correct approach is to distribute the surplus
cash by way of a special dividend to all shareholders, not to treat it as an
opportunity to creep the largest shareholder over the bid trigger, giving it
control without making an offer. </p>

<p><b>Instead of buying back 10% of the company at $3.60 per share,
a special dividend of $0.36 per share would have the exact same effect of
enhancing the return on shareholders' funds, while leaving Kerry Group with the
same percentage of the company and leaving open the possibility of a future bid
premium.</b> </p>

<p>Shareholders who wish to spend their dividend on buying more
shares would be free to do so. If Kerry Group wishes to go over the takeover
threshold, then it should make a full bid for the company. </p>

<p>Shareholders should note the following facts: </p>

<ul>
  <li>
    The buyback offer price represents
    a discount of 32.7% to the 52-week daily high of $5.35 on 29-Apr-02.</li>
  <li>
    The offer price represents a
    premium of only 9.9% to the 52-week daily low of $3.275 on 24-Sep-01, in the
    trough after the 911 attacks.</li>
  <li>
    The SCMP's only competitor for
    domestic English language newspapers is <a href="http://www.thestandard.com.hk/" target="_blank">The
    Standard</a>. Because its circulation is smaller and hence advertising rates
    are generally lower, The Standard gets the vast majority of the company
    announcements required to be published by the Stock Exchange, but this
    revenue stream will dry up when the Stock Exchange drops the
    requirement, which was due to happen &quot;<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2001/documents/1020401-HKEX-PA.pdf" target="_blank">by
    the second quarter of
    2002</a>&quot; so is already overdue. We question whether The Standard will be
    economically viable after that, potentially leaving SCMP with a monopoly.</li>
</ul>
<p><b>We urge independent shareholders to
vote AGAINST the resolutions to approve the offer. Instead, write to the SCMP
and demand that your company pays a special dividend of not less than $0.36 per
share, since they have now admitted that they have too much capital.</b></p>
<p>Frankly speaking, SCMP should know
better than to try a manoeuvre like this. Its Deputy Chairman and Publisher of
the newspaper, Thaddeus Beczak, is also Chairman of the Stock Exchange's main
board <a href="http://www.hkgem.com/aboutgem/e_release010503committee.pdf" target="_blank">Listing
Committee</a>.</p>
<p>Investors who care about corporate
governance should also note that Kerry Group controls two other companies listed
in Hong Kong, Shangri-La Asia Ltd and Kerry Properties Ltd.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=641">Great Wall Pan Asia Holdings Limited</a></li>
				
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