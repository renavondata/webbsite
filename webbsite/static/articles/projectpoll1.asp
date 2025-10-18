
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

<script type="text/javascript">document.title="Webb-site.com launches Project Poll";</script>

	<div class="summary">Webb-site.com announces the launch of Project Poll, a campaign which will get all votes counted, one-share-one-vote, in every meeting of the 33 Hang Seng Index companies and HKEx. Currently, absentee votes are ignored, and the levels of support and opposition to management proposals remain unrecorded. We will also appoint up to 5 journalists to attend each meeting, in an effort to open the closed doors of Hong Kong's shareholder meetings.</div>

<h2 class="center">Webb-site.com launches Project Poll<br>
<span class="headlinedate">3 March 2003</span></h2>
<p>In Jan-02, Hong Kong Exchanges and Clearing Ltd (<b>HKEx</b>) launched a
consultation on the corporate governance aspects of its Listing Rules. We made a
5-part submission, and 337 members of the investing public supported us with
e-mailed submissions, which HKEx <a href="investorsignored.asp" target="_blank">controversially</a>
chose to count as a single submission, while counting 110 submissions from
unnamed listed companies separately, even though many were probably
inter-related. </p>

<p>If that sham of a consultation process seems familiar, then it's probably
because you've been to a typical Hong Kong General Meeting where each resolution
is decided on a show of hands (<b>OPOV</b>, or one-person-one-vote), and almost
all the publicly held shares are represented by a single person from HKSCC
Nominees Ltd (owned by HKEx), who&nbsp; raises a single hand on each resolution,
while the listed company swamps her with employee-shareholder hands and then
declares the resolution &quot;passed&quot; without further ado. All the proxy
votes sent in by absent investors are not counted, and nobody knows how many
shares would have voted in favour or against each resolution. </p>

<p>The Jan-02 consultation on the listing rules included a section on general
meeting procedures. In our piece <a href="countthevotes.asp" target="_blank">Count
The Votes</a>, we submitted that one-share-one-vote (<b>OSOV</b>) is an
essential principle of shareholder participation in corporate governance, and
that Hong Kong's Victorian town-hall system of a show of hands is incompatible
with international best practice. </p>

<p>In its consultation and conclusions, HKEx said that it plans to amend the
rules (they are not yet out) to require a poll on connected transactions and
other matters on which independent shareholder approval is required, but not on <i>&quot;less
important matters&quot;</i>. </p>

<p>That is a half-baked pudding which we will not eat. The subtext of HKEx's
response is &quot;we know that controlling shareholders will normally determine
the outcome, so who cares what the public shareholders think?&quot; This overlooks
the fact that you don't have to win each vote to make your point, but there's no
point in standing up if you won't be counted. </p>

<p>If, for example, the majority of independent shareholders voted against the
reappointment of an independent director, but the controlling shareholder used
his 51% shareholding to re-elect his friend, then the market should still be
informed of the outcome and the level of the opposition. Similarly, if
directors' pay has gone through the roof while profits head through the floor,
then a protest vote against their ability to set their own pay would be in order. </p>

<p>We cannot even begin to contemplate management accountability in Hong Kong
without transparency in the voting process. </p>

<h3>Project Poll</h3>

<p>We warned in our article a year ago that if HKEx didn't fix this rule, then <i>Webb-site.com</i>
would do so. Well, they didn't, and we will. It is shameful that it has come to
this, but in the interests of holding management accountable to shareholders,
and bypassing the glacial pace of regulatory reform, we will set an example by
introducing polling to the largest companies in Hong Kong. </p>

<p>We are taking advantage of a little know provision in company law, and today
announce the launch of Project Poll. </p>

<p>At some expense, funded by <i>Webb-site.com</i> editor David Webb, and quite
a bit of legwork, we have
acquired 10 shares in each of the companies in the <a href="http://www.hsi.com.hk/constituent/con_hsi.html" target="_blank">Hang
Seng Index</a>, and of course 10 shares in HKEx itself. We wouldn't want them to
feel left out! We have arranged for 5 persons to be a member of each company,
each holding 2 shares.&nbsp; </p>

<p>Under <a href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/7ab15d0a3dfeb3c1c825648000432653" target="_blank">Section
114D</a> of the HK <a href="http://www.legislation.gov.hk/blis.nsf/CurAllEngDoc?OpenView&amp;Start=32.1.1&amp;Count=700&amp;Expand=32.1#32.10" target="_blank">Companies
Ordinance</a>, 5 members (registered shareholders) of a company, present in
person or represented by a proxy, can require a poll to be held. David Webb or another
proxy will attend each general meeting of each company and require a poll on each
resolution on behalf of the 5 members. Incidentally, if listed companies collude to hold simultaneous
meetings Japanese style, then we may need a few volunteers to attend them - so
<a target="_blank" href="../contact/default.asp">contact
us</a> if you can spare the time! </p>

<p>Project Poll is not intended to be disruptive but to improve the transparency
of shareholder meetings and the accountability of management. You'll probably
hear howls of protest from the listed companies claiming that counting votes is
incredibly expensive and time consuming. Don't believe it. Democracy is cheap.
The process of conducting a poll is very simple. In summary: </p>

<ol>
  <li>HKSCC Nominees Ltd (owned by HKEx) which, as
    nominee of the clearing system, represents most public shares, will send in
    its proxy form as usual, stating the total number of shares it represents in
    favour and against each resolution.</li>
  <li>Most other registered holders will vote by
    mailing in their proxy. The deadline for receiving proxies is usually 48
    hours before the meeting. By the time of the meeting, the registrar will
    already know the total of all proxies received, for and against each
    resolution.</li>
  <li>A few (mostly retired) registered shareholders
    or proxies will attend the meeting, and each will be handed out a ballot
    card as they enter, recording the number of shares they are entitled to
    vote. If they have also sent in a proxy card, this will be removed from the
    pile to avoid double-counting.</li>
  <li>After discussing each proposed resolution, or
    after all discussions, the ballot cards will be completed, collected and
    tallied, added to the proxy votes of absent owners, and the results will be
    announced. For most companies, with few shareholders present, this will not
    take long. In the case of large turnouts (such as the MTRC), the meeting may
    be adjourned and the results announced later.</li>
  <li>For best practice, we recommend that the poll be
    scrutinised by the auditors, who should certify the results.</li>
</ol>
<p>That's all there is to it. In case you are wondering, 5 of the HSI companies
are not incorporated here. 4 are incorporated in Bermuda, and 1 (HSBC Holdings
plc) lives in England, where it holds its meetings. We'll get that covered too.
Section 77(5)(b) of the Bermuda Companies Act requires a poll if demanded by 3
members, and Section 373 of the UK Companies Act has a similar provision for 5
members to demand a poll.</p>
<p>Believe it or not, there's nothing yet in the rules to require the results of
a poll to be published, although HKEx has proposed it. So in the meantime, if
companies do not publish the results, <i>Webb-site.com</i> will.</p>

<h3>Open the doors</h3>

<p>Public companies should hold their meetings in a public manner.
Non-registered shareowners, or potential investors, have a right to know how a
company deals with its shareholders in general meeting. Sadly, most companies in
Hong Kong hold their shareholder meetings behind closed doors, with no observers
from the media allowed. We're going to change that too! </p>

<p>You may have wondered why each member of Project Poll holds 2 shares, not 1.
That is because&nbsp; <a href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/def72c801f9c7d56c825648000432652" target="_blank">Section
114C(2)</a> of the HK Companies Ordinance allows each member to appoint two
proxies by law, or more than 2 if the Articles of the company allow it. We will
use our spare capacity to appoint journalists as proxies to attend the meetings.
If you are a journalist and want to witness a little piece of history in
shareholder activism, <a href="../contact/" target="_blank">contact us</a>
and we will try to accommodate you. Obviously this offer is limited to 5
journalists per meeting, so book now - tickets will be scarcer than the Rolling
Stones, but a lot cheaper, as we won't be charging. </p>

<h3>A message to listed companies</h3>

<p>For those of you in the Hang Seng Index, you now know that you will be
holding a poll in your General Meetings this year, and probably for ever after. You have
plenty of time to prepare. You can steal our thunder by voluntarily announcing,
in your notices of Meetings, that voting on all resolutions will be by a poll, and
that the meeting will be open to media observers. Bonus points for any company
which does this, but we will still be there just in case. </p>

<p>For those of you who are not in the Hang Seng Index - well, it is an antique
index anyway, but you can enhance your transparency by making the same
commitments. </p>

<h3>For shareholders in other listed companies</h3>

<p>We don't have the manpower resources to cover every listed company, which is
why we have started with the big ones in the index which normally represent over
70% of market capitalisation. but if
your company is not in the index, and you want a poll in its general meeting,
and are willing to attend, then we can provide 4 more members to hold 1 share
each to appoint you as proxy, and you can then demand a poll yourself. Just <a href="../contact/">
contact us</a> and we'll tell you how. You will need to pay stamp duty and registrar
fees which should come to about HK$8.50 per member. </p>

<h3>Project VAMPIRE</h3>

<p>There is one resolution proposed at each Annual General Meeting which sticks
out like a sore thumb for minority shareholder objection. It is the general
placing mandate, which allows management to dilute your property rights (your
share of the company and its assets) by up to 20% at any time in the year
without further approval, by issuing shares in a placing to supposedly
independent third parties without offering them to you first in a rights issue. </p>

<p>In our next article, we will launch Project VAMPIRE (Vote Against Mandate for
Placings, Issues by Rights Excepted), the campaign against the general mandate
in its current form.
Project Poll means that even if we don't block the general mandate, we will
succeed in registering the level of opposition of public investors to it. </p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
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